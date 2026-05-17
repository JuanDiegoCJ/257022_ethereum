// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Cafeteria257022 {

    address public dirContrato;

    struct Cafe {
        uint256 id;
        string nombre;
        uint256 precio;
    }

    Cafe[] public cafes;

    constructor() {
        console.log("Ejecutado por: 257022 - Juan Diego Carranza Jacinto");
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _precio) public {
        console.log("Ejecutado por: 257022 - Juan Diego Carranza Jacinto");
        cafes.push(Cafe(_id, _nombre, _precio));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 257022 - Juan Diego Carranza Jacinto");
        return cafes.length;
    }
}