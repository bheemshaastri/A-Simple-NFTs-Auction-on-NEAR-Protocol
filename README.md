# A Simple-NFTs-Auction-on-NEAR-Protocol
This Contract has build on NEAR Protocol with Rust Programming Language. 

A contract allow user to mint NFT and hold an auction, the winner is the one with the single lowest bid.

# Steps to build and deploy the Contract

In the first step, we need to run the command:

    ./build.sh

As the second step, we need to run the command:

    ./dev-deploy.sh
    
If you are facing any issues in running the above commands then run the below command for solving the issues:

    rustup target add wasm32-unknown-unknown 
    
# Login to NEAR-CLI

Next we need to login to near-cli by installing near-cli and create some accounts for conducting NFTs auction on NEAR PROTOCOL.

use the command for installing near-cli is:
     
     npm install -g near-cli
     
Once you've created your near wallet go ahead and login to your wallet with your cli and follow the on-screen prompts use the command for logging into near-cli

    near login
    
Once your logged in you have to deploy the contract. Make a subaccount with the name of your choosing

    near create-account nft-example.your-account.testnet --masterAccount your-account.testnet --initialBalance 10
    
# Setting up the Environment Variables 

After deploying the Contract, set the environment variable to your accountId

    export ID=youraccount
    
# Deploying the Contract

    near deploy --wasmFile res/contract.wasm --accountId $ID
    
# Intializing the Contract

    near call $ID new '{"_owner_id":"'$ID'"}' --accountId $ID
    

    
