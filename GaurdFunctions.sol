//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GaurdFunctions{

function callRequire()public payable  {
    require(false , "Require Called!!!");
}
function callAssert()public payable {

    assert(false );

}
function callThrow() public payable{
   // throw; it is depreacated 
}
function callRevert() public payable{
    revert();
}

}