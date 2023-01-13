pragma solidity ^0.8.0;

contract TempContract{
    uint ID;
    string name ;
  function   setID(uint _ID ) public {
        ID = _ID;

    }

    function getID()public view returns (uint){
        return ID;
    }

    function setName(string memory _name) public {

        name = _name;
    }

    function getName() public view returns (string memory ){

        return name;

    }


}


contract MainContract{
    TempContract person;
    function createPerson(uint ID , string memory name) public {
        TempContract temp = new TempContract();
        temp.setID(ID);
        temp.setName(name);
        person = temp;

    }

    function getName() public view returns (string memory){

        return person.getName();
    }

    function getID() public view returns(uint ){

        return person.getID();
    }
}