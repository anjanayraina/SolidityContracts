// in solidity the cost of gas for the opcode of conditional arguments is different for different ones , so you would need to put the 
// conditional statements smartly so that the gas taken is small. 
// For example , instead of the check x >= 1 you can put x > 0. This is will save more gas. Also 
// The op code for != takes in more gas , so it is better to avoid that statement whenver possible . 
//Also remeber to use the external and pure keywords to restrict ascerss as well as save some more gas in the contract.
pragma solidity ^0.8.0;

// 149 gas
function a() external pure returns(bool) {
  return 1 > 0;
}

// 193 gas
function b() external pure returns(bool) {
  return 1 >= 0;
}

// 237 gas
function c() external pure returns(bool) {
  return 1 != 0;
}

// 164 gas
function d() external pure {
  require(1 > 0);
}

// 208 gas
function e() external pure {
  require(1 >= 0);
}

// 120 gas
function f() external pure {
  require(1 != 0);
}