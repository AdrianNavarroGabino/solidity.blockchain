// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food {

    // Estructura de datos
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    // Menu del dia
    dinnerPlate[] public menu;

    // Creacion de un nuevo menu
    function newMenu(string memory name, string memory ingredients) internal {
        menu.push(dinnerPlate(name, ingredients));
    } 
}


contract Hamburguer is Food {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Cocinar una hamburguesa desde el Smart Contract principal
    function doHamburguer(string memory ingredients, uint units) external {
        require(units <= 5, "Ups, no puedes pedir tantas hamburguesas");
        newMenu("Hamburguer", ingredients);
    }

    // Modifier: permitir el acceso unicamente al owner y solo al owner
    modifier onlyOwner() {
        require(owner == msg.sender, "No tienes permisos para ejecutar esta funcion");
        _;
    }

    // Restriccion a la ejecucion (solo puede el owner)
    function hashPrivateNumber(uint number) public view onlyOwner returns (bytes32) {
        return keccak256(abi.encodePacked(number));
    }
}