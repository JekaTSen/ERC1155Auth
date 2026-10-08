// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.7.0
pragma solidity ^0.8.30;

interface IERC1155Auth {
    function hasToken(address _user, uint256 _tokenId) external view returns(bool);
    function updateTokenUri(uint256 _tokenId, string memory _newTokenUri) external;
}