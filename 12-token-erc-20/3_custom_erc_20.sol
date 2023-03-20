// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./2_erc_20.sol";

contract customERC20 is ERC20 {

    // Constructor del Smart Contract
    constructor() ERC20("Adrian", "AN") {}

    // Creacion de nuevos Tokens
    function createTokens() public {
        _mint(msg.sender, 1000);
    }
}