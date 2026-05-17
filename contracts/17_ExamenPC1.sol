// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Cafeteria257022 {

    address public dirContrato;

    struct Cafe {
        uint256 id;
        string nombre;
        uint256 precio;
        bool estado;
    }

    Cafe[] public cafes;

    modifier registrarEjecucion() {
        console.log("Ejecutado por: 257022 - Juan Diego Carranza Jacinto");
        _;
    }

    constructor() registrarEjecucion {
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _precio) public registrarEjecucion {
        for (uint256 i = 0; i < cafes.length; i++) {
            require(cafes[i].id != _id, "Cafe con ese ID ya existe");
        }

        require(_precio > 0, "El precio debe ser mayor a cero");

        cafes.push(Cafe(_id, _nombre, _precio, true));
    }

    function contarElementos() public view registrarEjecucion returns (uint256) {
        return cafes.length;
    }
}