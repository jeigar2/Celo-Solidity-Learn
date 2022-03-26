pragma solidity ^.8;

contract Proyecto is Ownable {

    address public comprador;
    address public vendedor;

    bool public depositoListo;
    bool public compradorOK;
    bool public pagoListo;

    unit public montoPago;

    modifier onlyComprador() {
        require(msg.sender==comprador,"No es el comprador");
        _;
    }

    constructor(address _comprador, address _vendedor, uint _monto){
        comprador= _comprador;
        vendedor= _vendedor;
        montoPago= _monto;
        depositoListo=false;
        pagoListo=false;
    }

    //deposita el comprador
    function despositarPago() payable public onlyComprador {
        require/msg.value == montoPago, "No es el valor correcto");
        depositoListo=true;
    }

    function compradorConfirmaOK() public onlyComprador {
        compradorOK=true;
    }

    //retira el vendedor
    function retirarPago() public {
        require(compradorOK,"El comprador no ha dado el  ok");
        payable(vendedor).transfer(montoPago);
        pagoListo=true;
    }

    // si el vendedor no entrega el producto, interviene el _arbitro
    function pagarPorArbitro() public onlyOwner {
        payable(vendedor).transfer(montoPago);
        pagoListo=true;
    }
} 