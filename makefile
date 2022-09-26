# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
update:; forge update

# Build & test
# change ETH_RPC_URL to another one (e.g., FTM_RPC_URL) for different chains
FORK_URL := ${ETH_RPC_URL} 
build  :; forge build
test  :; forge test
trace  :; forge test -vvv
# tests with forks
test-fork :; forge test --fork-url $(MAINNET_RPC_URL) --match-contract Tokenizer -vvv
clean  :; forge clean
snapshot :; forge snapshot