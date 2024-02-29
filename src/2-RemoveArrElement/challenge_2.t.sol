//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {RemoveArrElement} from "src/2-RemoveArrElement/challenge_2.sol";

contract RemoveArrElementTest is Test {
    RemoveArrElement removeArrElement;

    function setUp() public {
        removeArrElement = new RemoveArrElement();
    }

    // forge test --mt testChallenge2 -vvv
    function testChallenge2() public {
        uint256[] memory result = removeArrElement.get();
        console2.log("before remove");
        for (uint256 i = 0; i < result.length; i++) {
            console2.log(result[i]);
        }
        removeArrElement.remove(3);

        result = removeArrElement.get();
        console2.log("after remove");
        for (uint256 i = 0; i < result.length; i++) {
            console2.log(result[i]);
        }
    }
}
