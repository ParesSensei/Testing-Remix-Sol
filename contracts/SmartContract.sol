//SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.0;

contract Parent {
    uint private data;

    uint public info;

    constructor(){
        info = 10;
    }

    function increment(uint a) private pure returns(uint) {
        return a + 1;
    }

    function setIncrement() public pure returns(uint) {
        return increment(2);
    }

    // public
    function updateData(uint a) public{
        data = a;
    }
    function getData() public view returns(uint){
        return data;
    }
    function compute(uint a, uint b) internal pure returns(uint){
        return a + b;
    }
}

// external contract
contract External {
    function readData() public returns(uint){
        Parent c = new Parent();
        c.updateData(7);
        return c.getData();
    }
}

contract Baru is Parent {
    uint private result;
    Parent private c;

    constructor(){
        c = new Parent();
    }

    function getComputeResult()public {
        result = compute(3,5);
    }

    function getResult() public view returns (uint){
        return result;
    }

    function getDataBaru() public view returns (uint) {
        return c.info();
    }
}