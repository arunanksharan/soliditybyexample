// Solidity supports for, while, and do while loops.
// Don't write loops that are unbounded as this can hit the gas limit,
// causing your transaction to fail.
// For the reason above, while and do while loops are rarely used.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop {
    function loop() public pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                break;
            }
        }

        uint j;
        while (j < 5) {
            j++;
        }
    }
}
