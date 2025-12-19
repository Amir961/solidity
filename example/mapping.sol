// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping {

    mapping (address => uint) private myMap;
    mapping (address => mapping (uint=>bool)) nestedMaping;


    function set(address _address,uint256 _value) public  {
        myMap[_address]=_value;
    }
    function get(address _address) public view returns (uint256) {
        return myMap[_address];
    }
    
    function remove(address _address) public   {
        delete myMap[_address];
    }

    function SetNested(address _address,uint256 _i, bool value) public  {
        nestedMaping[_address][_i]=value;
    }

     function getNested(address _address,uint256 _i) public view returns (bool) {
       return nestedMaping[_address][_i];
    }

     function removeNested(address _address,uint256 _i) public   {
       delete nestedMaping[_address][_i];
    }
}