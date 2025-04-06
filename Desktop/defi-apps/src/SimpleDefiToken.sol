// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract SimpleDefiToken is ERC20{

  string public setGreeting;


  constructor() ERC20("Simple Defi Token", "NBLD"){
    _mint(msg.sender, 1e24);
  }

  function sayHi(string memory greeting)public {
    setGreeting = greeting;
  }
}