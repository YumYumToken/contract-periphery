import { abi as POOL_ABI } from '@yumyumswap/contract-core/artifacts/contracts/YumyumSwapPool.sol/YumyumSwapPool.json'
import { Contract, Wallet } from 'ethers'
import { IYumyumSwapPool } from '../../typechain'

export default function poolAtAddress(address: string, wallet: Wallet): IYumyumSwapPool {
  return new Contract(address, POOL_ABI, wallet) as IYumyumSwapPool
}
