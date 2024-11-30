// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuickSort {
    function quickSort(bytes memory input) public returns (string memory) {
        bytes32[] memory arr = new bytes32[](input.length);
        for (uint256 i = 0; i < input.length; i++) {
            arr[i] = bytes32(input[i]);
        }
        _quickSort(arr, 0, arr.length - 1);
        return _toString(arr);
    }

    function _quickSort(bytes32[] memory arr, uint256 left, uint256 right) private {
        if (left < right) {
            uint256 pivotIndex = _partition(arr, left, right);
            _quickSort(arr, left, pivotIndex - 1);
            _quickSort(arr, pivotIndex + 1, right);
        }
    }

    function _partition(bytes32[] memory arr, uint256 left, uint256 right) private returns (uint256) {
        bytes32 pivot = arr[right];
        uint256 i = (left - 1);

        for (uint256 j = left; j < right; j++) {
            if (arr[j] < pivot) {
                i++;
                _swap(arr, i, j);
            }
        }

        _swap(arr, i + 1, right);
        return i + 1;
    }

    function _swap(bytes32[] memory arr, uint256 i, uint256 j) private {
        bytes32 temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    function _toString(bytes32[] memory arr) private pure returns (string memory) {
        bytes memory result = new bytes(arr.length);
        for (uint256 i = 0; i < arr.length; i++) {
            result[i] = bytes1(arr[i]);
        }
        return string(result);
    }
}
