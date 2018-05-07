pragma solidity ^0.4.2;
// Test contract :)
// Comment represents greeting message. Owener may not be necessary.
contract HelloSolidity{
  string public comment1;
  address public owner;

// Cnstructor
function HelloSolidity(string _msg1){
    comment1=_msg1;
    owner=msg.sender;
  }

// Modifier onlyOwner.
modifier onlyOwner(){
  require(msg.sender==owner);
  _;
}

// Setter function for your message.
// The message of your choice!
function setMessage(string _message) public onlyOwner{
  comment1=_message;
}

// Getter function for your message.
function getMessage() view public returns(string _message){
  return comment1;
}
}
