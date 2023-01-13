pragma solidity ^0.8.0;
contract ImmutableSolidity{
    address public immutable owner = msg.sender;
    function getOwner() public view returns (address){

        return owner;
    }


}

// Immutable is just like constant  , but it is preferred as it takes up less gas than wihtout using immmutable or by using 
// constant  