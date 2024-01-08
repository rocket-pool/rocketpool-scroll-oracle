# Rocket Pool rETH Exchange Rate Oracle for Scroll

This repository contains 2 main contracts. `RocketScrollPriceMessenger` which can be called by anyone to submit the current
rETH exchange rate (as reported by `RocketNetworkBalances`) to the `RocketScrollPriceOracle` contract which is deployed on
Scroll.

## Notice

Rocket Pool provides this exchange rate oracle as-is for convenience and offers no guarantee about its accuracy or the
freshness of the data. These contracts have not been formally audited for security or correctness.

## Usage

Calling `rate()` on `RocketScrollPriceOracle` will return the latest rETH exchange rate reported. This value is in the form
of the ETH value of 1 rETH. e.g. If 1 rETH is worth 1.5 ETH `rate()` will return 1.5e18. `lastUpdated()` can be called to
retrieve the timestamp that the rate was last updated.

## Deployments

Rocket Pool maintains a Goerli testnet instance of the protocol alongside our mainnet deployment which can be used for
integration testing before promotion to mainnet.

| Chain   | RocketScrollPriceMessenger (Ethereum)                                                                                         | RocketScrollPriceOracle (Scroll)                                                                                                | RocketBalancerRateProvider (Scroll)                                                                                     |
|---------|-------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| Mainnet | [0x0f22dC9b9C03757D4676539203d7549c8f22C15C](https://etherscan.io/address/0x0f22dc9b9c03757d4676539203d7549c8f22c15c)         | [0x30A593876596d347fbba2b5883651B6B1dcecCf7](https://scrollscan.com/address/0x30A593876596d347fbba2b5883651B6B1dcecCf7)         | [0x776D700e69F86b2b89daaf636Aa1df8Ba0434256](https://scrollscan.com/address/0x776D700e69F86b2b89daaf636Aa1df8Ba0434256) |
| Sepolia | [0x9a336ed9d8d13d9d99d2f375b539c027db55684a](https://sepolia.etherscan.io/address/0x9a336ed9d8d13d9d99d2f375b539c027db55684a) | [0x762Bc8622Ed65B6215a3FcCf07210D5c00edd69f](https://sepolia.scrollscan.com/address/0x762Bc8622Ed65B6215a3FcCf07210D5c00edd69f) | TBA                                                                                                                     |

