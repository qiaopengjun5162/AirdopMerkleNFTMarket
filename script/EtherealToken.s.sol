// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {EtherealToken} from "../src/EtherealToken.sol";

contract EtherealTokenScript is Script {
    EtherealToken public market;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddress = vm.addr(deployerPrivateKey);
        vm.startBroadcast(deployerPrivateKey);

        market = new EtherealToken(deployerAddress);
        console.log("EtherealToken deployed to:", address(market));

        vm.stopBroadcast();
    }
}
