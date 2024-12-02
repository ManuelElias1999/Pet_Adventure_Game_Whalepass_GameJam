### **Project Overview: Pet Adventure Game**  

---

#### **Introduction**  
Pet Adventure is a video game that combines fun and blockchain technology to create a unique and rewarding experience. Players take on the role of various pets navigating through exciting adventures. Along the way, they collect tokens that can be used to:  
- Unlock new pets via NFTs
- Earn rewards in USDC
- Purchase Pet Adventure Tokens with USDC

This project aims not only to entertain but also to create an engaging blockchain gaming experience where players can earn real rewards while having fun with their virtual pets.

Want to play? Try it here: https://manuelelias.itch.io/pet-adventure

---

#### **How to Play?**  

##### **Game Objective:**  
Players guide their pets through various adventures and challenges. Each level presents unique obstacles, and the primary goal is to complete missions while collecting rewards along the way.

##### **Collect Pet Adventure Tokens:**  
Tokens are scattered throughout the game. By collecting them, players can:  
- Purchase unique pet NFTs
- Upgrade their pets' abilities
- Improve chances of earning USDC rewards

##### **Earn USDC Rewards:**  
By completing missions and achievements, players can earn USDC rewards that are distributed directly to their wallet through the PetAdvRewards contract.

##### **Buy Pet Adventure Tokens:**  
Players can purchase Pet Adventure Tokens using USDC through the PetAdvToken contract to progress faster in the game and unlock more content.

##### **Collect Pet NFTs:**  
Using collected tokens, players can mint unique pet NFTs through the PetAdvNFT contract, with metadata stored permanently on Whalepass.

---

#### **Technologies Used**  

##### **Frontend:**  
- **JavaScript:** For game logic and blockchain integration
- **Web3:** For blockchain connectivity
- **Responsive UI:** Optimized for both mobile and desktop devices

##### **Backend:**  
- **Blockchain:** Base Sepolia for efficient and low-cost transactions
- **Programming Language:** Solidity ^0.8.19
- **Framework:** Foundry for smart contract development
- **Smart Contracts:**  
  - PetAdvToken
  - PetAdvNFT
  - PetAdvRewards

---

#### **Smart Contracts**  

##### **PetAdvToken Contract (0x3cA89Cc4b5B42bc33EE35299afD4Eb264F0e713C):**  
Manages all operations related to the game's token:
- **Token Purchase:** Buy tokens with USDC
- **Agent System:** Authorized agents can mint tokens
- **Exchange Rate:** Configurable token/USDC exchange rate

##### **PetAdvNFT Contract (0xd686F2838D67fB1c89652b338460F5a75427C46d):**  
Handles the NFT functionality:
- **NFT Minting:** Creates unique pet NFTs
- **Metadata:** Stores pet data on Whalepass
- **Authorization:** Controls minting permissions

##### **PetAdvRewards Contract (0xCd4b68aEa3fc2Db21C441F53ABDA1EdFe68D8209):**  
Manages the reward distribution:
- **USDC Distribution:** Sends rewards to players
- **Authorization:** Controls reward distribution permissions
- **Reward Configuration:** Adjustable reward amounts

---

#### **Business Model**  

##### **For the Company:**  
- **Token Sales:**  
  Revenue is generated through Pet Adventure Token sales via USDC and NFT minting fees.

##### **For Players:**  
- **USDC Rewards:**  
  Players earn USDC rewards for their achievements and participation.

- **NFT Ownership:**  
  Players own their pets as NFTs, providing true digital asset ownership.

Pet Adventure creates an engaging blockchain gaming experience where players can collect unique NFTs, earn real rewards, and enjoy an immersive pet-themed adventure.