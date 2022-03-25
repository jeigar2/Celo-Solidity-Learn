// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract Direcciones {
    address public creador;

    constructor() {
        creador = msg.sender;
    }
}