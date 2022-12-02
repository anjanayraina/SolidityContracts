//SPDX-License-Identifier: MIT

pragma solidity 0.8.0;
contract SharedWallet{
    address  payable owner;

    constructor(address payable _owner){
        owner = _owner;
    }
    function withdrawMoney(address payable _to , uint amount )  public {
        (bool success, ) = _to.call{value : amount }("");
        require(success , "The transcation didnt go through!!");
        
    }
}