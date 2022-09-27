// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract inheritance{
    address owner;
    constructor(){

owner = msg.sender;


    }
function getOwner() public view returns(address ){
return owner;


}


}
    
contract child is inheritance{

function getOwnerinChiild() public view returns (address){

    return super.getOwner();
}

}