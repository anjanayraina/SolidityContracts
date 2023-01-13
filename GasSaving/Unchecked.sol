// in solidity , from versions above 0.8 there is a wrapper class that checks for overflow and underflow and then returns an error if there is one. If there is no need for a 
// check , then you can just add the unchecked block in the function so that some more gas can be saved .

//Example Code : 
pragma solidity ^0.8.0;


function unchecked_inc(uint i) returns (uint) {
    unchecked {
        return i + 1;
    }
}