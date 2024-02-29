//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {
    FunctionSequenceGasCost_LongName,
    FunctionSequenceGasCost_ShortName
} from "src/3-FunctionSequenceGasCost/challenge_3.sol";

contract FunctionSequenceGasCostTest is Test {
    FunctionSequenceGasCost_LongName longName;
    FunctionSequenceGasCost_ShortName shortName;

    function setUp() public {
        longName = new FunctionSequenceGasCost_LongName();
        shortName = new FunctionSequenceGasCost_ShortName();
    }

    // forge test --mt testChallenge3 -vvv
    function testChallenge3() public {
        {
            string[] memory commandInput = new string[](5);
            commandInput[0] = "forge";
            commandInput[1] = "inspect";
            commandInput[2] = "src/3-FunctionSequenceGasCost/challenge_3.sol:FunctionSequenceGasCost_LongName";
            commandInput[3] = "mi";
            commandInput[4] = "--pretty";
            bytes memory result = vm.ffi(commandInput);
            console2.log(string(result));
        }

        {
            string[] memory commandInput = new string[](5);
            commandInput[0] = "forge";
            commandInput[1] = "inspect";
            commandInput[2] = "src/3-FunctionSequenceGasCost/challenge_3.sol:FunctionSequenceGasCost_ShortName";
            commandInput[3] = "mi";
            commandInput[4] = "--pretty";
            bytes memory result = vm.ffi(commandInput);
            console2.log(string(result));
        }

        longName.ThisIsAVeryLongFunctionNameThatDoesTheSameThingAsTheShortOne();
        shortName.A();
    }

    // forge debug src/3-FunctionSequenceGasCost/challenge_3.t.sol:FunctionSequenceGasCostTest
    function run() public {
        longName.ThisIsAVeryLongFunctionNameThatDoesTheSameThingAsTheShortOne();
        shortName.A();
    }
}
