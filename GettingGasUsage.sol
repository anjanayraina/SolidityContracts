pragma solidity ^0.8.0;
contract GettingGasUsage{
    function gasUsage() public returns(uint ){
        uint startGas = gasleft();
        uint x = 10;
        uint y = 5;
        uint z = x+y;
        uint endGas = gasleft();
        return startGas - endGas;
    }
    constructor() payable{
        
    }
} 