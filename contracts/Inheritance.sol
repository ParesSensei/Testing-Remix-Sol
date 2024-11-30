// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract orangtua {
    uint internal id;

    function setValue(uint _value) public {
        id = _value;
    }
}

contract andi is orangtua {
    function getValue () public view returns (uint){
        return id;
    }
}

contract caller {
    andi andika = new andi();

    function wariskan(uint _input) public returns (uint){
        andika.setValue(_input);
        return andika.getValue();
    }
}