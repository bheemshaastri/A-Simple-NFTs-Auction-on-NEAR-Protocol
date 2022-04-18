cargo build --all --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/nfts_auction_on_near_protocol.wasm ./res/contract.wasm
