pragma solidity ^0.8.0;

contract HelperContract{

    string public name;
    constructor(string memory _name){
        name = _name;
    }
    function getName() public view returns(string memory){

        return name;
    } 


}

contract MainContract{
    HelperContract helperAddress;
    constructor(address _helperAddress){
        helperAddress = HelperContract(_helperAddress);

    }

    function getHelperName( ) public view  returns(string memory ){

       return helperAddress.getName();
    }

}

contract MaliciousContract{

    string public name;
    constructor(string memory _name){

        name = _name;
    }
    function getName() public view returns(string memory){
        return name;
    }
}

// in this when deploying the Main Contract, instead of giving the address of the Helper Contract , what you can 
// do is give the address of the malicious contract in the Main Contract constrctor . This will make the getHelperName functoin 
// call the Malicious Contract instead of Helper contract.