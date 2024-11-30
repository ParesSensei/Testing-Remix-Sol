//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract QuickSort {
    function quickSort(bytes1[] memory arr) public pure returns (bytes1[] memory) {
        _quickSort(arr, 1, uint(arr.length) - 1);
        return arr;
    }

    function _quickSort(bytes1[] memory arr, uint left, uint right) private pure {
        if (left < right) {
            uint pivot = _partition(arr, left, right);
            _quickSort(arr, left, pivot - 1);
            _quickSort(arr, pivot + 1, right);
        }
    }

    function _partition(bytes1[] memory arr, uint left, uint right) private pure returns (uint) {
        bytes1 pivotValue = arr[(left + right) / 2];
        uint i = left;
        uint j = right;

        while (i <= j) {
            while (arr[i] < pivotValue) {
                i++;
            }
            while (arr[j] > pivotValue) {
                j--;
            }
            if (i <= j) {
                (arr[i], arr[j]) = (arr[j], arr[i]);
                i++;
                j--;
            }
        }

        return i;
    }
}
