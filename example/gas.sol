// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Gas {

    uint256 private counter;

    function setLoop() public  {
        while (true)
         counter++;
    }

    function get() external  view returns(uint256) {
        return counter;
    }
    
}