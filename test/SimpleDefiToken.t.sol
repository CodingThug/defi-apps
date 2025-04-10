// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleDefiToken.sol";

contract SimpleDefiTokenTest is Test {
    SimpleDefiToken public token;
    address public user = address(0x123);

    function setUp() public {
        // Deploy the SimpleDefiToken contract
        token = new SimpleDefiToken();
    }

    function testSayHi() public {
        string memory testGreeting = "Hello, Defi!";
        token.sayHi(testGreeting);
        string memory currentGreeting = token.setGreeting();
        assertEq(currentGreeting, testGreeting, "Greeting should be updated");
    }

    function testTransfer() public {
        uint256 transferAmount = 1e18;
        token.transfer(user, transferAmount);
        uint256 userBalance = token.balanceOf(user);
        assertEq(userBalance, transferAmount, "User should have received the transferred tokens");
    }
}