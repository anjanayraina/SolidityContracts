// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract change{

// these functions save the values of the string in hexadecimal form in the bytes variables
    bytes10 public b1 ;
    bytes10 public b2 ;
function setBytes1() public {

b1 = "byteVal";


}

function setBytes2()public {
b2 = "byteVal";

}

}