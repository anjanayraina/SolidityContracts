// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract payableConact{

    uint balanace = 0;

    function deposit()public  payable {
        balanace+=msg.value;

    }

    function getBalance() public view returns(uint){

        return balanace;
        
    }
}
