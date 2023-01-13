pragma solidity ^0.8.0;
contract SelfDestruct{
    constructor() payable {

    }
    function killContract( ) external{
        selfdestruct(payable(msg.sender));
    } 
    

}
// This is used to remove the smart contract from the blockchain and it force sends ether to the address specified 
// it can also be used to force send ether to a contract as well even without a fallback or a reieve