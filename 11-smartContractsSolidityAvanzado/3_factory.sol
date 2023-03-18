// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Padre {

    // Almacenamiento de la informacion del Factury
    mapping(address => address) public personalContract;

    // Emision de los nuevos Smart Contracts
    function Factory() public {
        address addrPersonalContract = address(new Hijo(msg.sender, address(this)));
        personalContract[msg.sender] = addrPersonalContract;
    }
}


contract Hijo {

    // Estructura de datos del propietario
    Owner public propietario;
    struct Owner {
        address owner;
        address smartContractPadre;
    }

    // Datos recibidos al nuevo Smart Contract
    constructor(address account, address accountSC) {
        propietario.owner = account;
        propietario.smartContractPadre = accountSC;
    }
}