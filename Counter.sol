// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Test} from "forge-std/Test.sol";
contract Counter is Test{
    uint256 public number;
    
    function setup() public{
        vm.createSelectFork({blockNumber:0,urlOrAlias:"mainnet"});
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    fallback() external payable {}

    receive() external payable {}
}
