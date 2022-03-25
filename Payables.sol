pragma solidity ^0.8.0;

contract Payables {

    address public charity; // variable de estado

    mapping(address=>uint) public donations; // variable de estado (relación entre una dirección y un número entero)

    constructor() {
        charity = msg.sender;
    }

    function deposit() payable public { // permite recibir critpomoneda
        donations[msg.sender] = msg.value;
    }

    function withdraw() public {
        payable(charity).transfer(address(this).balance); // recibe una transferencia
    }
}