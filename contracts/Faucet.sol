// SPDX-License-Identifier: MIR
pragma solidity ^0.8.19;

contract Faucet{
   //receive
   // this is a special function
   //its called when you make tx that doesn't specify
   // function name to call

   // external function are part of the contract interface
   // which means  they can be called via contract and other txs

   receive() external payable {}

   function addFunds() external payable {}
}

// Block info
// nounce - a hash that when combined with the minHash proofs that
// the block has gone through proof of work(POW)
// 8 bytes => 64 bits

// const instance = await Faucet.deployed()
//  instance.addFunds({value: "2000000000000000000"})