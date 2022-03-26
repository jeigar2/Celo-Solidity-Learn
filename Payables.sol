pragma solidity ^0.8.0;

contract Ownable {

    address public ownable;

    constructor() {
        ownable = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender==charity,"Not the charity");
        _;
    }
}

contract Payables is Ownable {

    mapping(address=>uint) public balanceOf; // variable de estado (relación entre una dirección y un número entero)

    function deposit() payable public { // permite recibir critpomoneda
        balanceOf[msg.sender] = msg.value;
    }

    function withdraw() public onlyOwner {
        payable(ownable).transfer(address(this).balance); // recibe una transferencia
    }
}