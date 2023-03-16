// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Functions {

    // Funciones de tipo Pure
    function getName() public pure returns (string memory) {
        return "Adrian";
    }

    // Funciones de tipo View
    uint256 x = 100;
    function getNumber() public view returns (uint256) {
        return x * 2;
    }
}