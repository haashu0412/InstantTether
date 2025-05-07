# InstantTether: Cryptocurrency Payment Gateway with AML Compliance

## Overview

**InstantTether** is a comprehensive fintech solution that addresses the dual challenge of cryptocurrency payment volatility and regulatory compliance. This system consists of a real-time stablecoin payment gateway and a Visual Anti-Money Laundering (AML) Dashboard powered by machine learning.

## Key Features

- **Real-Time Stablecoin Conversion**  
  Convert payments in any ERC-20 token to USDT instantly via smart contracts. Merchants are protected from price volatility.

- **Layer-2 Ethereum Scaling**  
  Utilizes Optimism for low gas fees and high-speed transactions.

- **AML Risk Scoring via XGBoost**  
  Wallets are scored based on behavioral patterns to detect anomalies such as smurfing and layering.

- **SHAP Explainability**  
  Every flagged transaction includes a visual explanation for audit and legal transparency.

- **Interactive Dashboard with Gradio**  
  Visualize risk scores, transaction anomalies, and export flagged results for regulatory compliance.

- **Portable and Modular Deployment**  
  Dockerized backend and frontend for local/cloud deployment.

## Technologies Used

- **Frontend:** Gradio, Plotly, Matplotlib
- **Backend:** Python, Flask, XGBoost, SHAP, Web3.py
- **Smart Contracts:** Solidity, Remix IDE, MetaMask
- **Infrastructure:** Docker, Streamlit, Hugging Face Spaces
- **APIs:** Binance, CoinGecko, Chainlink, Pinata

## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/haashu0412/InstantTether.git
    cd InstantTether
    ```

2. Install dependencies:
    ```bash
    npm i
    ```

3. Launch the application:
    ```bash
    npm run dev
    ```

4. Launch Dashboard

    copy the colab file and run it


## Project Structure

- `contracts/` – Smart contracts in Solidity
- `dashboard/` – Gradio UI and visualization
- `model/` – XGBoost training and SHAP analysis
- `backend/` – Flask APIs and data pipelines
- `docker/` – Dockerfiles for containerized deployment

## Project Goals

- Enable **real-time crypto-to-stablecoin** conversion
- Deliver **machine learning-based AML detection**
- Ensure **audit-ready explainability**
- Provide **scalable and modular architecture**

## Architecture

- InstantTether - Application Architecture
  ![Screenshot 2024-11-10 094408](https://github.com/user-attachments/assets/5d8aadde-6e9f-4afa-a2b1-182b789fc08c)

- InstantTether - Module Architecture
  ![Screenshot 2024-11-10 085329](https://github.com/user-attachments/assets/a619e367-cd2d-4cca-aebc-e058cf88c4bb)

- InstantTether - Layered Architecture
  ![Screenshot 2024-11-10 092739](https://github.com/user-attachments/assets/59aaa0c2-6765-4e08-8f4a-373c2a71c983)

- AML Dashboard Architecture
  ![AML DASHBOARD](https://github.com/user-attachments/assets/30119b85-f756-4017-8ebe-74dc4c33eef9)


## Sample Output 

- InstantTether
  ![image](https://github.com/user-attachments/assets/97d6c0cc-1603-49a2-835c-2220b49a3d22)
  ![Screenshot 2024-10-17 112501](https://github.com/user-attachments/assets/9b611211-8b21-45df-9e1d-89e24b8110c1)
![Screenshot 2024-10-17 112521](https://github.com/user-attachments/assets/425ca6fa-dc5e-474e-aa9b-51c908e62b2f)
![Screenshot 2024-10-17 112542](https://github.com/user-attachments/assets/cf749521-5913-4c70-90f1-231cb8b58b8f)
![image](https://github.com/user-attachments/assets/751365d7-5870-4f27-8870-7b894f913672)
![image](https://github.com/user-attachments/assets/3133e1ab-a3f7-41b2-9f0e-e6cc76ee71c4)
- NFT Module
  ![Screenshot 2024-10-17 112605](https://github.com/user-attachments/assets/56d35e85-b617-4eea-b44f-d45f8ba020f0)

- AML Dashboard
  ![image](https://github.com/user-attachments/assets/acf630fd-b34f-4768-aff5-42769c494abc)
![image](https://github.com/user-attachments/assets/fefb4341-f8fd-4545-ab94-0503c2249004)
![image](https://github.com/user-attachments/assets/04245436-1f60-4d86-9ec4-629ac8764d04)
![image](https://github.com/user-attachments/assets/2f057257-ae9b-4023-8533-555c957fccc0)
