// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {ExampleContract} from "../src/ExampleContract.sol"; // 👈 Add this if needed
import {StdInvariant} from "forge-std/StdInvariant.sol";
contract CounterTest is StdInvariant, Test{
    Counter public counter;
    ExampleContract public exampleContract;
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
        exampleContract = new ExampleContract(); // 👈 Initialize
    }
    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }
    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
    function testIAlwaysGetZero(uint256 data) public {
        data=7;
        exampleContract.doStuff(data);
        assertEq(exampleContract.shouldAlwaysBeZero(), 0);
        data=0;
        exampleContract.doStuff(data);
        assertEq(exampleContract.shouldAlwaysBeZero(), 0);
    }
}
