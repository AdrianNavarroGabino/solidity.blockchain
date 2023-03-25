// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./JamToken.sol";
import "./StellartToken.sol";

contract TokenFarm {

    // Declaraciones iniciales
    string public name = "Stellart Token Farm";
    address public owner;
    JamToken public jamToken;
    StellartToken public stellartToken;

    // Estructuras de datos
    address[] public stakers;
    mapping(address => uint) public stakingBalance;
    mapping(address => bool) public hasStaked;
    mapping(address => bool) public isStaking;

    // Constructor
    constructor(StellartToken _stellartToken, JamToken _jamToken) {
        stellartToken = _stellartToken;
        jamToken = _jamToken;
        owner = msg.sender;
    }
}