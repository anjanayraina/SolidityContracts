// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
// we are using view so that we can restrict the ascess of the given function
// to just the viewing o state variables , it cant change any state variable
// Pure is used for restricting ascess to changing the state variables as well
// as viewing , so a pure function cant view as well as change a state variabel
contract change{
uint maxCount =0;

function getCount() public view returns(uint){

    return maxCount;

}

function getSum(uint x , uint y) public pure returns(uint ){

return x + y;

}



}