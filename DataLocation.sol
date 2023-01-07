pragma solidity 0.8.0;
contract DataLocation {
    string name;

    function someFunction(string calldata _name){
        _name = name;
        
    }
}