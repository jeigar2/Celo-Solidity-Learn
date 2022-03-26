pragma solidity ^.8;

contract Proyecto {

    address public comprador;
    address public vendedor;

    address public arbitro;

    bool public depositoListo;
    bool public compradorOK;
    bool public pagoListo;

    unit public montoPago;

    constructor(address _comprador, address _vendedor, uint _monto, address _arbitro){
    }

    //deposita el comprador
    function despositarPago() public {}

    function compradorConfirmaOK() public {
    }

    //retira el vendedor
    function retirarPago() public {}

    // si el vendedor no entrega el producto, interviene el _arbitro
    function cancelarPorArbitro() public {}
} 