// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.30;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {ERC1155Auth} from "../src/ERC1155Auth.sol";
import {Roles} from "../src/Roles.sol";

contract ERC1155GranMinterRole is Script {

    function run(address _to) public {
        uint256 deployPrivateKey = vm.envUint("DEPLOYER_KEY");

        vm.startBroadcast(deployPrivateKey);

        address contractAddress = vm.envAddress("CONTRACT_ADDRESS");
        ERC1155Auth keyToken = ERC1155Auth(contractAddress);

        keyToken.grantRole(Roles.MINTER_ROLE, _to );
        console.log("Role MINTER_ROL granted to: ", _to);

    }

}

//forge script script/ERC1155GranMinterRole.s.sol:ERC1155GranMinterRole --broadcast --rpc-url wss://base-sepolia-rpc.publicnode.com etherscan --etherscan-api-key API_KEY --sig "run(address)" 0x48cF011571C4188a0723932A23957Ee86fD22342 