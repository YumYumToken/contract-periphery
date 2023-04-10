// SPDX-License-Identifier: GPL-2.0-or-later
import '@yumyumswap/contract-core/contracts/interfaces/IYumyumSwapPool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for IYumyumSwapPool;

    function countInitializedTicksCrossed(
        IYumyumSwapPool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
