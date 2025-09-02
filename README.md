# Protocol_Doublespending_cross_chain
To organize and execute the two different simulated scenarios (Proposed protocol to prevent double spending and another work is Proposed protocol to prevent Eclipse-based Double Spending) in a cross-chain environment, you can set up the project in a structured way with separate folders for each scenario. Here's a step-by-step guide for organizing the code into three different folders and running each attack scenario:

# Softwares required:
    - Install Node.js 
    - Install Ganache(npm install -g ganache-cli)
    - Install Truffle
    - Install Web3.js
# Initialize a Node.js Project:
 Run the following command to create a package.json file:
   - npm init -y
# Install Dependencies:
   - npm install web3 truffle elliptic @truffle/hdwallet-provider
# Set Up Truffle Project:
   - truffle init
# Configure Ganache and Truffle:
  - Start Ganache
         Replace each mnemonic phrase with the one from your Ganache instance.
# Write the Smart Contract:
 - Create a contracts/ folder and add  Cmain.sol,Cside.sol,SC.sol contract file.
# Write the Migration Script:
  - Create a migration script in the migrations/ folder.
# Compile and Deploy the Contract:
  - truffle compile
  - truffle migrate --network development
# Implement the Simulation Code:
 
 - interact.js: Contains the logic to interact with the deployed contract and simulate attacks.
  
# Running the Simulation :
 - node  interact.js
   # Authors' Information :

Aradhita Mukherjee

Ca’ Foscari University of Venice, Venice, Italy

E-mail: aradhita.mukherjee.2016@gmail.com

Luca Olivieri

Ca’ Foscari University of Venice, Venice, Italy

E-mail: luca.olivieri@unive.it 

Nabendu Chaki 

University of Calcutta, Kolkata, West Bengal, India

E-mail: nabendu@ieee.org

Agostino Cortesi

Ca’ Foscari University of Venice, Venice, Italy

E-mail: cortesi@unive.it 

