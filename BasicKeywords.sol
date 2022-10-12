// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract basicInfoGetter {

    address creator;

    constructor()
    {
        creator = msg.sender; 								    
    }
	
	function minerAddress() public view returns (address) // get CURRENT block miner's address, 
	{														     // not necessarily the address of the miner when this block was born
		return block.coinbase;
	}
	
	function difficulty() public view returns (uint)
	{
		return block.difficulty;
	}
	
	function gaslimit() public view returns (uint)  // the most gas that can be spent on any given transaction right now
	{													  
		return block.gaslimit;
	}
	
	function blockNumber() public view returns (uint)
	{
		return block.number;
	}
    
    function timestamp() public view returns (uint) // returns current block timestamp in SECONDS (not ms) from epoch
    {													
    	return block.timestamp; 						 // also "now" == "block.timestamp", as in "return now;"
    }
    
    function msgData() public pure returns (bytes memory) 		// The data of a call to this function. Always returns "0xc8e7ca2e" for me.
    {										            // adding an input parameter would probably change it with each diff call?
    	return msg.data;
    }
    
    function msgSender() public view returns (address)  // Returns the address of whomever made this call
    {													// (i.e. not necessarily the creator of the contract)
    	return msg.sender;
    }
    
    function msgValue() public payable returns (uint)		// returns amt of wei sent with this call
    {
    	return msg.value;
    }

    // check balance of the contract
    function balanceOf() public view returns(uint) {
        return address(this).balance / 1e18;
    }

    
    /***  A note about gas and gasprice:
     
     Every transaction must specify a quantity of "gas" that it is willing to consume (called startgas), 
     and the fee that it is willing to pay per unit gas (gasprice). At the start of execution, 
     startgas * gasprice ether are removed from the transaction sender's account. 
     Whatever is not used is immediately refunded.
     
     */
    
    function msgGas() public view returns (uint)        
    {													
    	return gasleft();
    }
    
	function txGasprice() public view returns (uint) 	// "gasprice" is the amount of gas the sender was *willing* to pay. 50000000 for me. (geth default)
    {											     	
    	return tx.gasprice;
    }
    
    function txOrigin() public view returns (address) 	// returns sender of the transaction
    {											   		// What if there is a chain of calls? I think it returns the first sender, whoever provided the gas.
    	return tx.origin;
    }
    
	function contractAddress() public view returns (address) 
	{
		return creator;
	}
    
    function contractBalance() public view returns (uint) 
    {
    	return creator.balance;
    }
    
}