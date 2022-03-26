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
        comprador= _comprador;
        vendedor= _vendedor;
        montoPago= _monto;
        arbirto = _arbitro;
        depositoListo=false;
        pagoListo=false;
    }

    //deposita el comprador
    function despositarPago() public {}

    function compradorConfirmaOK() public {
        require(msg.sender==comprador,"No es el comprador");
        compradorOK=true;
    }

    //retira el vendedor
    function retirarPago() public {
        require(compradorOK,"El comprador no ha dado el  ok");
        payable(vendedor).transfer(montoPago);
        pagoListo=true;

    }

    // si el vendedor no entrega el producto, interviene el _arbitro
    function cancelarPorArbitro() public {
        require(msg-sender==arbitro,"Solo lo puede hacer el arbirto");
        payable(vendedor).transfer(montoPago);
        pagoListo=true;
    }
} 