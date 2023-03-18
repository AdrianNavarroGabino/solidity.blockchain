// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract LoopsConditionals {

    // Suma de los 10 primeros numeros a partir de un numero introducido
    function sum(uint number) public pure returns (uint) {
        uint auxSum = 0;

        // Bucle for
        for(uint i = number; i < number + 10; i++) {
            auxSum += i;
        }

        return auxSum;
    }

    // Suma de los 10 primeros numeros impares
    function odd() public pure returns (uint) {
        uint auxSum = 0;
        uint counter = 0;
        uint counterOdd = 0;

        while(counterOdd < 10) {
            if(counter % 2 != 0) {
                auxSum += counter;
                counterOdd++;
            }

            counter++;
        }
        
        return auxSum;
    }
}