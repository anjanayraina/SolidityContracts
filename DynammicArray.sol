// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract change{

uint[] public arr;
// we can delcare an array like this and here are all the add and delete operations done on the array
function addArray(uint x) public {

arr.push(x);


}

function deleteArray(uint index ) public returns (uint ){
    uint val = arr[index];
    arr[index] = arr[arr.length - 1];
    arr.pop();
    return val;
}

function printArray() public view returns (uint[] memory ){

return arr;
}

}