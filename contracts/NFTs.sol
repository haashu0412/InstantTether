// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTCreator is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    address payable public admin;
    uint public mintFee = 0.00025 ether;

    Counters.Counter private _tokenIds;

    struct NFTData {
        uint256 tokenId;
        address creator;
        string tokenURI;
    }
    NFTData[] private allNFTs;
    mapping(address => NFTData[]) private userCreatedNFTs;
    mapping(address => NFTData[]) private userOwnedNFTs;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() ERC721("@InstantTether", "@IT") Ownable(msg.sender) {
        admin = payable(msg.sender);
    }
    function mint(string memory tokenURI) payable external
        returns (uint256)
    {
        require(msg.value == mintFee, "Incorrect registration fee");
        _tokenIds.increment();
        uint256 tokenId = _tokenIds.current();

        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);
        NFTData memory newNFT = NFTData({
            tokenId: tokenId,
            creator: msg.sender,
            tokenURI: tokenURI
        });
        allNFTs.push(newNFT);
        userCreatedNFTs[msg.sender].push(newNFT);
        userOwnedNFTs[msg.sender].push(newNFT);

        payable(admin).transfer(msg.value);

        return tokenId;

    }
    function fetchUserOwnedNFTs(address user) external view returns (NFTData[] memory) {
        return userOwnedNFTs[user];
    }
    function fetchUserCreatedNFTs(address user) external view returns (NFTData[] memory) {
        return userCreatedNFTs[user];
    }
    function transferNFT(address from, address to, uint256 tokenId) external {
        require(
            _isApprovedOrOwner(msg.sender, tokenId),
            "Caller is not owner nor approved"
        );
        safeTransferFrom(from, to, tokenId);
        NFTData memory transferredNFT;
        bool found = false;
        for (uint256 i = 0; i < userOwnedNFTs[from].length; i++) {
            if (userOwnedNFTs[from][i].tokenId == tokenId) {
                transferredNFT = userOwnedNFTs[from][i];
                found = true;
                break;
            }
        }
        require(found, "NFT not found in user's owned NFTs");
        userOwnedNFTs[to].push(transferredNFT);
        _removeNFTFromUser(from, tokenId);
    }
    function _removeNFTFromUser(address user, uint256 tokenId) internal {
        NFTData[] storage nfts = userOwnedNFTs[user];
        for (uint256 i = 0; i < nfts.length; i++) {
            if (nfts[i].tokenId == tokenId) {
                nfts[i] = nfts[nfts.length - 1];
                nfts.pop();
                break;
            }
        }
    }
    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view returns (bool) {
        return (getApproved(tokenId) == spender || isApprovedForAll(ownerOf(tokenId), spender) || ownerOf(tokenId) == spender);
    }

    function updateMintFee(uint _newFee) public onlyAdmin {
        mintFee = _newFee;
    }

    
}
