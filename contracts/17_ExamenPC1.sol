// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Cafeteria257022 {

    struct Cafe {
        uint256 id;
        string nombre;
        uint256 precio;
    }

    Cafe[] public cafes;

    constructor() {
        console.log("Ejecutado por: 257022 - Juan Diego Carranza Jacinto");
    }
}