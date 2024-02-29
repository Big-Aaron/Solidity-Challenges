// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FunctionSequenceGasCost_LongName {
    uint256 public number = 10;

    function ThisIsAVeryLongFunctionNameThatDoesTheSameThingAsTheShortOne() public {
        number++;
    }
}

contract FunctionSequenceGasCost_ShortName {
    uint256 public number = 10;

    function A() public {
        number++;
    }
}
