//SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

contract Mycontract {

    string public ourString = "hallo dunia";

    function updateString (string memory _updateString) public {
        ourString = _updateString;
    }
}
