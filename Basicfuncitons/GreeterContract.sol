// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Greeter {

    address creator;
    string greeting;

    constructor(string memory _greeting) {
        creator = msg.sender;
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }

    function setGreeting(string memory _newgreeting) public {
        greeting = _newgreeting;
    }
    function getCreatorBalance() public view returns (uint) {
        return creator.balance;
    }
}