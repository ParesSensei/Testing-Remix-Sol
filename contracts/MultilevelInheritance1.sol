// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract A {
    uint internal a;

    function getA(uint _value) external {
        a = _value;
    }
}

contract B {
    uint internal b;

     function getB(uint _value) external {
        b = _value;
    }
}