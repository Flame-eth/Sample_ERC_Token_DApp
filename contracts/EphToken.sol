// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import '../@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '../@openzeppelin/contracts/access/Ownable.sol';


contract ephToken is ERC20, Ownable{

    // string constant public _name;
    // string constant public _symbol;


    constructor() ERC20("EphToken", "EPT"){
    }

    function mint(uint _amount) public payable onlyOwner {
        _amount = 1;
        _mint(msg.sender, _amount );
    }

    function transferToken (address recipient, uint _amount) public {
        transfer(recipient, _amount);
    }
    
    function marketCap() public view onlyOwner {
        totalSupply();
    }

    function checkBalance(address _account) public view {
        balanceOf(_account);
    }


}