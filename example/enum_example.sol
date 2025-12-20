// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import "./status_enum.sol";

contract EnumExample {

    StatusEnum enumData;
    function get() public view  returns (StatusEnum)  {
        return  enumData;
    }

     function set(StatusEnum status) public     {
          enumData= status;
    }

     function camceled() public     {
          enumData= StatusEnum.Canceled;
    }

     function reset() public     {
        delete   enumData;
    }
}