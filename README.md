# YumYumSwap Periphery

[![Tests](https://github.com/YumYumToken/contract-periphery/workflows/Tests/badge.svg)](https://github.com/YumYumToken/contract-periphery/actions?query=workflow%3ATests)
[![Lint](https://github.com/YumYumToken/contract-periphery/workflows/Lint/badge.svg)](https://github.com/YumYumToken/contract-periphery/actions?query=workflow%3ALint)

This repository contains the periphery smart contracts for the YumYumSwap Protocol.
For the lower level core contracts, see the [uniswap-v3-core](https://github.com/Uniswap/uniswap-v3-core)
repository.

## Bug bounty

This repository is subject to the YumYumSwap bug bounty program,
per the terms defined [here](./bug-bounty.md).

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@yumyumswap/contract-periphery`
and import bytecode imported from artifacts located at
`@yumyumswap/contract-periphery/artifacts/contracts/*/*.json`.
For example:

```typescript
import {
  abi as SWAP_ROUTER_ABI,
  bytecode as SWAP_ROUTER_BYTECODE,
} from '@yumyumswap/contract-periphery/artifacts/contracts/SwapRouter.sol/SwapRouter.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Uniswap code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Uniswap v3 periphery interfaces are available for import into solidity smart contracts
via the npm artifact `@yumyumswap/contract-periphery`, e.g.:

```solidity
import '@yumyumswap/contract-periphery/contracts/interfaces/ISwapRouter.sol';

contract MyContract {
  ISwapRouter router;

  function doSomethingWithSwapRouter() {
    // router.exactInput(...);
  }
}

```
