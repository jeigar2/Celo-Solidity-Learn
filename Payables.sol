pragma solidity ^0.8.0;

contract Payables {

    address public charity; // variable de estado

    mapping(address=>uint) public balanceOf; // variable de estado (relación entre una dirección y un número entero)

    constructor() {
        charity = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender==charity,"Not the charity"); // chequea que se cumpla la condicion, sino manda el mensaje
        _;
    }

    function deposit() payable public { // permite recibir critpomoneda
        balanceOf[msg.sender] = msg.value;
    }

    function withdraw() public onlyOwner {
        payable(charity).transfer(address(this).balance); // recibe una transferencia
    }
}