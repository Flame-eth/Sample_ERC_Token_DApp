const EphToken = artifacts.require("EphToken");

module.exports = function (deployer) {
  deployer.deploy(EphToken);
};
