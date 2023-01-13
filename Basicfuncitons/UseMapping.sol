pragma solidity ^0.8.0;
contract UseMapping {
    // string[]  cars;
    // constructor()  {
    //     cars  = ["Kia" , "India" , "Hey"];
    // }
    // gas cost : 166540

    mapping(int=>string) maps;
    constructor () {
        maps[0] = "Kia";
        maps[1] = "India";
        maps[2] = "Hey";
    }

    //gas cost : 142227
    // gas saved by using mapping using the same amount of the space in the contract

}