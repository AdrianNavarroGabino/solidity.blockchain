// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract EthSend {

    constructor() payable {}
    receive() external payable {}

    // Eventos
    event sendStatus(bool);
    event callStatus(bool, bytes);

    // Transfer
    function sendViaTransfer(address payable to) public payable {
        to.transfer(1 ether); // Si no se escribe ether, se esta enviando una unidad de gas
    }

    // Send
    function sendViaSend(address payable to) public payable {
        bool sent = to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }

    // Call
    function sendViaCall(address payable to) public payable {
        (bool success, bytes memory data) = to.call{value: 1 ether}("");
        emit callStatus(success, data);
        require(success == true, "El envio ha fallado");
    }
}

contract EthReceiver {
    
    event log(uint amount, uint gas);

    receive() external payable {
        emit log(address(this).balance, gasleft());
    }
}