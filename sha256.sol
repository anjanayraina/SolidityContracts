pragma solidity ^0.8.0;

contract Test {   
   function callKeccak256() public pure returns(bytes32 result){
      return keccak256("ABC");
   }  
}

//sha256(bytes memory) returns (bytes32) 
// this is basically used to get the sha256 hash of the given input