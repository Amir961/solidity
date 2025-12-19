// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variable {
    
    address public  constant MYADDRESS= 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    int256 public  constant MYINT= 23;

    address public  immutable myAddress;
    int public  immutable myInt;


    uint256 oneWei= 1 wei;
    uint256 oneEther= 1 ether;


      uint256 public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 wei
    bool public isOneGwei = (oneGwei == 1e9);


    bool isEqualsWei = oneWei==1;
    bool public isOneEther = (oneEther == 1e18);

    constructor(int _myInt) {
        myAddress= msg.sender;
        myInt= _myInt;
    }
}