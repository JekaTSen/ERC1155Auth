// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.30;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {ERC1155Auth} from "../src/ERC1155Auth.sol";
import {Roles} from "../src/Roles.sol";

contract ERC1155AuthDeploy is Script {

    function run() public {

        uint256 deployPrivateKey = vm.envUint("DEPLOYER_KEY");

        vm.startBroadcast(deployPrivateKey);

        ERC1155Auth keyToken = new ERC1155Auth();
 
        console.log("ERC1155Auth deployed: ", address(keyToken));

    }



}

//forge script script/ERC1155AuthDeploy.s.sol:ERC1155AuthDeploy --broadcast --rpc-url wss://base-sepolia-rpc.publicnode.com --verify --verifier etherscan --etherscan-api-key API_KEY

