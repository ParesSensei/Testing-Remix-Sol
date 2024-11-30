// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VariableTypes {
    //state variabel
    uint sum;

    //local variable
    function tambah(uint num1, uint num2) public {
        //local
        uint temp = num1 + num2;
    }

    function getHasil() public view returns (uint){
        return sum;
    }

}

contract Types {
    bool public valid = true;

    int32 public angkaku = -32;
    uint public angkamu = 1;

    uint32 public ui_data = 5_01_2021;

    uint8 result;

    function tambah()public {
        //resuit= 3/5; hasil akhir tidak bisa float
        result = 3.5 + 1.5;
    }

    // bytes 1-32

    bytes1 public huruf = "A";
    string public kalimat = "ini adalah string";

    // enum
}

contract Emumsaya {
    enum Jobs {Programmer, Analis, security}

    function getEnum() public pure returns(Jobs){
        return Jobs.Analis;
    }
}