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
     
use the command for logging into near-cli

    near login
    
