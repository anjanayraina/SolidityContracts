// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TransactionLogger{
    address payable owner;
    constructor(){
        owner = payable(msg.sender);
    }
    event transactionSent(address indexed sender  , uint value );
    modifier isOwner(){

        require(msg.sender == owner , "The sender is not the owner!");
        _;
    }

    function sendTransaction( address payable to) payable public {
     
        (bool success , ) = to.call{value  : msg.value }("");
        require(success , "Transaction Failed!!");

        emit transactionSent(msg.sender , msg.value);
    }

}