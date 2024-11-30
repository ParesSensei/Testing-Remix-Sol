//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract AddressContract {
    // address = nomor rekening

    //address payable
    //send dan transfer

    // address public caller;

    // function getCallerAddress() public returns(address){
    //     caller = msg.sender;

    //     return caller;
    // }
    uint receivedAmount;

    function getCallerAddress() public view returns (address caller){
        caller = msg.sender;
    }

    function receiveEther() payable public{
        receivedAmount = msg.value;
    }

    //address payable
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    }
}