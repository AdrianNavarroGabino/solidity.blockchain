// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.4.2/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.4.2/access/Ownable.sol";

contract ArtToken is ERC721, Ownable {
    // ===================================================
    // Initial Statements
    // ===================================================

    // Smart Contract Constructor
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    // NFT token counter
    uint256 COUNTER;

    // Pricing of NFT Tokens (price of the artwork)
    uint256 fee = 5 ether;

    // Data structure with the properties of the artwork
    struct Art {
        string name;
        uint256 id;
        uint256 dna;
        uint8 level;
        uint8 rarity;
    }

    // Storage structure for keeping artworks
    Art[] public art_works;

    // Declaration of an event
    event NewArtWork(address indexed owner, uint256 id, uint256 dna);

    // ===================================================
    // Help Functions
    // ===================================================

    // Creation of a random number (required for NFT token properties)
    function _createRandomNum(uint256 _mod) internal view returns (uint256) {
        bytes32 hash_randomNum = keccak256(abi.encodePacked(block.timestamp, msg.sender));
        uint256 randomNum = uint256(hash_randomNum);
        return randomNum % _mod;
    }
}