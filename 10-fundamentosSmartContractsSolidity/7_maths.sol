// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Maths {

    // Suma
    function suma(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Resta
    function resta(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    // Producto
    function prod(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Division
    function div(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

    // Exponenciacion
    function exp(uint a, uint b) public pure returns (uint) {
        return a ** b;
    }

    // Modulo
    function mod(uint a, uint b) public pure returns (uint) {
        return a % b;
    }

    // (x + y) % k
    function addMod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (addmod(x, y, k), (x + y) % k);
    }

    // (x * y) % k
    function mulMod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (mulmod(x, y, k), (x * y) % k);
    }
}