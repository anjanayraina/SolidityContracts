// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20Token is ERC20{

    constructor(string memory name ,string memory symbol ) ERC20(name , symbol){

        _mint(msg.sender  ,100*10**(decimals()));
    }
}

// In this , we are using the ERC20 library from OpenZepplin to min 10^18 tokens 
// and we are transferring those to the owner account . 
// _mint is an internl function of ERC20