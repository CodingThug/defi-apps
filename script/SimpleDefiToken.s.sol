// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/SimpleDefiToken.sol";

contract DeploySimpleDefiToken is Script {
    function run() public {
        // Start broadcasting transactions (simulate deploying contract)
        vm.startBroadcast();

        // Deploy the SimpleDefiToken contract
        SimpleDefiToken token = new SimpleDefiToken();

        // Stop broadcasting (end deployment)
        vm.stopBroadcast();

        // Optionally print the address of the deployed contract
        console.log("SimpleDefiToken deployed to:", address(token));
    }
}