// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ExampleContract {
    uint256 internal stored;
    uint256 private hiddenValue=0;
    function doStuff(uint256 data) public {
        if(hiddenValue==7){
            
        }
        hiddenValue=data;
    }

    function shouldAlwaysBeZero() public view returns (uint256) {
        return 0; // always returns zero for test
    }
}
