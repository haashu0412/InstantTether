import {
  mainnet,
  polygon,
  optimism,
  arbitrum,
  base,
  holesky,
  sepolia,
  baseSepolia,
} from "wagmi/chains";
import { getDefaultConfig } from "@rainbow-me/rainbowkit";
import { injected, metaMask, safe, walletConnect } from "wagmi/connectors";

const projectId = process.env.NEXT_PUBLIC_WALLET_CONNECT;

export const config = getDefaultConfig({
  appName: "InstantTether",
  projectId: projectId,
  chains: [holesky],
  ssr: true, // If your dApp uses server side rendering (SSR)
});
