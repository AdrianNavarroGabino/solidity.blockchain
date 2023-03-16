// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract DataStructures {

    // Estructura de datos de un cliente
    struct Customer {
        uint256 id;
        string name;
        string email;
    }

    // Variable de tipo Customer
    Customer customer1 = Customer(1, "Adrian", "adrian@gmail.com");

    // Array de uints de una longitud fija
    uint256[5] public fixedListUints = [1,2,3,4,5];

    // Array dinamico de uints
    uint256[] dynamicListUints;

    // Array dinamico de tipo Customer
    Customer[] public dynamicListCustomer;

    // Nuevos datos en un array
    function arrayModification(uint256 id, string memory name, string memory email) public {
        Customer memory randomCustomer = Customer(id, name, email);
        dynamicListCustomer.push(randomCustomer);
    }

    // Mappings
    mapping (address => uint256) public addressUint;
    mapping (string => uint256[]) public stringListUints;
    mapping (address => Customer) public addressDataStructure;

    // Asignar un numero a una direccion
    function assignNumber(uint256 number) public {
        addressUint[msg.sender] = number;
    }

    // Asignar un numero a una direccion
    function assignList(string memory name, uint256 number) public {
        stringListUints[name].push(number);
    }

    // Asignacion de una estructura de datos a una direccion
    function assignDataStructure(uint id, string memory name, string memory email) public {
        addressDataStructure[msg.sender] = Customer(id, name, email);
    }
}