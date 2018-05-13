var HelloSolidity = artifacts.require("HelloSolidity");

contract("HelloSolidity", function(accounts){
  it("should be a message \"Hello Solidity\"", function(){
    return HelloSolidity.deployed().then(function(instance){
      return instance.comment1();
    }).then(function(message){
      assert.equal(message, "Hello Truffle!", "Message was not correctly sent.")
      });
    });
  });
