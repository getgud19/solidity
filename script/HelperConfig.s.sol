// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


import {Script} from "forge-std/Script.sol";

contract HelperConfig {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address priceFeed;
    }


    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getSepoliaEthConfig();
        } else {
            activeNetworkConfig = getAnvilEthConfig();
        }
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory sepoliaNetworkConfig) {
        sepoliaNetworkConfig = NetworkConfig({
            priceFeed: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 // ETH / USD
        });
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory) {
        
    }
}