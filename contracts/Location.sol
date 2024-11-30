// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;



contract Location{
    // uint stateVar = 10; //storage

    // function iniFungsi() public returns(uint){
    //     uint localVar = 20; // memory

    //     localVar = stateVar;
    //     stateVar = 40; // tidak berpengaruh 

    //     return (localVar);
    // }
    function iniFungsi()public pure returns (uint [] memory, uint [] memory){
        uint[] memory localMemoryArray1 = new uint[](3);

        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return(localMemoryArray1, localMemoryArray2);
    }
}
