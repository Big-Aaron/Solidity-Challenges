//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {ConstructorStateVariables, SmallPool} from "src/4-ConsructorStateVariables/challenge_4.sol";

contract FunctionSequenceGasCostTest is Test {
    ConstructorStateVariables public constructorStateVariables;

    function setUp() public {
        constructorStateVariables = new ConstructorStateVariables();
    }

    // forge test --mt testChallenge4 -vvv
    function testChallenge4() public view {
        console2.log(
            "password: %d, number: %d", constructorStateVariables.password(), constructorStateVariables.number()
        );
        console2.log("smallPool.number: %d", constructorStateVariables.smallPool().number());
    }
}
