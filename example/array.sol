// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    
    uint16[] arr;
    uint16[10] arrFixed;
    uint16[] array= [1,2,3,4];


    function push(uint16 value) public  {
        arr.push(value);
    }


    function get(uint16 index) public view  returns (uint16)  {
       return  arr[index];
    }

    function remove(uint16 index) public  {
      delete   arr[index];
    }

    function getLenght() public view  returns (uint256)  {
       return  arr.length;
    }

      function pushFixed(uint16 value,uint256 index) public  {
        arrFixed[index]=value;
    }


    function getFixed(uint16 index) public view  returns (uint16)  {
       return  arrFixed[index];
    }

    function removeFixed(uint16 index) public  {
      delete   arrFixed[index];
    }

    function getLenghtFixed() public view  returns (uint256)  {
       return  arrFixed.length;
    }

          function pushArra(uint16 value) public  {
            array.push(value);
       
    }


    function getArray(uint16 index) public view  returns (uint16)  {
       return  array[index];
    }

    function removeArray(uint16 index) public  {
      delete   array[index];
    }

    function getLenghtArray() public view  returns (uint256)  {
       return  array.length;
    }
}