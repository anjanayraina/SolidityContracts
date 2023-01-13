pragma solidity ^0.8.0;
contract SendEther{

    constructor()  payable{}

    receive() external payable{}

    function usingSend(address payable to) public payable{
        bool sent  = to.send(100);
        require(sent , "Transaction Failed!!");

    }

    function usingTransfer(address payable to) public payable{

        to.transfer(100);
    }

    function usingCall(address payable to) public payable {

        (bool sent  , bytes memory message ) = to.call{value : 100}("");
    }


}