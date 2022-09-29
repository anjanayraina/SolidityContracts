pragma solidity ^0.8.0;
contract EventExample{

    event messageSent(address indexed from , address indexed  to , string  text);

    function sendMessage(address to   ,string calldata text) public {

       emit  messageSent(msg.sender , to , text);
    }

    // we can have atmost 3 indexed parameters in an event , we also need to emit the event that we would like to store on the
    // blockchain , it would cost gas fee but it can be done 

}