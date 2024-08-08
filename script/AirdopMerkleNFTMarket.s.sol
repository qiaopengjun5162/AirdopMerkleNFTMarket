// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {AirdopMerkleNFTMarket} from "../src/AirdopMerkleNFTMarket.sol";

contract AirdopMerkleNFTMarketScript is Script {
    AirdopMerkleNFTMarket public market;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // market = new AirdopMerkleNFTMarket();
        // console.log("AirdopMerkleNFTMarket deployed to:", address(market));

        vm.stopBroadcast();
    }
}
