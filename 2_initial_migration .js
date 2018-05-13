var HelloSolidity = artifacts.require("HelloSolidity");

module.exports = function(deployer) {
  var _msg1 = "Hello Truffle!";
  deployer.deploy(HelloSolidity, _msg1);
};
