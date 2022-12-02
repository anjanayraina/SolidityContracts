//SPDX-License-Identifier: MIT

pragma solidity 0.8.0;
contract SharedWallet{
    address  payable owner;
    address payable sharedAccount;
    constructor(address payable _owner){
        owner = _owner;
    }
}