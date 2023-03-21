// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Importacion de Smart Contracts de OpenZeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.5.0/utils/Counters.sol";

contract erc721 is ERC721 {

    // Contadores para los IDs de los NFTs
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Constructor del Smart Contract
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    // Envío de NFTs
    function sendNFT(address _account) public {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _safeMint(_account, newItemId);
    }
}