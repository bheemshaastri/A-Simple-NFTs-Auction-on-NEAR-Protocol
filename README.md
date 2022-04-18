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
    
# Minting an NFT

You can use another account to mint nft, mint fee is 1N.

    near call $ID mint_nft '{"_owner_id":[account1],"_token_data":{"title":"title","description":"description"}}' --accountId [account1] --deposit 1
    
# Get list NFT that you Own

    near call $ID get_token_by_owner '{"_owner_id":[account1]}' --accountId [account1]
    
# Create an auction, create auction fee is 5N

    near call $ID create_auction '{"_token_id":1,"_auction_during_seconds":60}' --accountId [account1] --deposit 5
    
# Get list auctions that you own

    near call $ID get_auction_by_owner '{"_auction_id":1}' --accountId [account1]
    
# Start an auction

    near call $ID start_auction '{"_auction_id":1}' --accountId [account1]
    
# The participants now can commit their N

    near call $ID commit_auction '{"_auction_id":1}' --accountId [account2] --deposit 1 near call $ID commit_auction '{"_auction_id":1}' --accountId [account2] --deposit 3
    
# The owner of the smart contract will continuously run the check function to check the status of the auctions

    near call $ID check_auctions --accountId $ID
    
# Announcing the Winner by checking the token id

    near call $ID get_token_by_id '{"_token_id":3}' --accountId $ID
    
    
