pragma solidity ^0.4.23;
///@ title Test contract :)
///@ dev Comment represents greeting message. Owener may not be necessary.
contract HelloSolidity{
  string comment1;
  address owner;

///@ dev Cnstractor
  function HelloSolidity{
    comment1="HelloSolidity";
    owner=msg.sender;
  }

///@ dev Modifier onlyOwner.
modifier onlyOwner(){
  require(msg.sender==owner);
  _;
}

///@ dev Setter function for your message.
///@ pram The message of your choice!
function setMessage(string _message) public onlyOwner{
  comment1=_message;
}

///@ dev Getter function for your message.
function getMessage() public {
  return comment1;
}
}
