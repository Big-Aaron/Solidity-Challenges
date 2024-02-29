//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {WhichSlot} from "src/1-WhichSlot/challenge_1.sol";

contract WhichSlotTest is Test {
    WhichSlot whichSlot;

    function setUp() public {
        whichSlot = new WhichSlot();
    }

    // forge test --mt testChallenge1 -vvv
    function testChallenge1() public {
        string[] memory commandInput = new string[](5);
        commandInput[0] = "forge";
        commandInput[1] = "inspect";
        commandInput[2] = "src/1-WhichSlot/challenge_1.sol:WhichSlot";
        commandInput[3] = "storage";
        commandInput[4] = "--pretty";
        bytes memory result = vm.ffi(commandInput);
        console2.log(string(result));
    }
}
