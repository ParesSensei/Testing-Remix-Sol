// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraySearch {
    function findValuesBetween4And13(uint[] memory arr) public pure returns (uint[] memory) {
        uint[] memory result = new uint[](arr.length);
        uint count = 0;
        
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] > 4 && arr[i] < 13) {
                result[count++] = arr[i];
            }
        }
        
        uint[] memory finalResult = new uint[](count);
        for (uint j = 0; j < count; j++) {
            finalResult[j] = result[j];
        }
        
        return finalResult;
    }
}

