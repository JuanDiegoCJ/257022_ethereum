// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompArrays {
    
    // Declaración de arreglos
    uint256[] public numeros;
    
    // Estructura para representar un Alumno
    struct Alumno {
        string nombre;
        uint edad;
    }
    
    // Arreglo dinámico de estructuras tipo Alumno
    Alumno[] public alumnos;

    // --- Funciones para el arreglo de números ---

    function agregarNumero(uint _num) public {
        numeros.push(_num);
    }

    function obtenerNumeros() public view returns(uint256[] memory) {
        return numeros;
    }

    function getTamanioArray() public view returns(uint) {
        return numeros.length;
    }

    // Nota: El compilador crea automáticamente la función:
    // function numeros(uint256 indice) public view returns(uint)

    // --- Funciones para el arreglo de Alumnos ---

    function agregarAlumno(string memory _nombre, uint _edad) public {
        // Se crea la instancia de Alumno y se añade al arreglo
        alumnos.push(Alumno(_nombre, _edad));
    }

    function mostrarAlumno(uint256 i) public view returns(string memory, uint) {
        // Opción 1: Cargando el alumno en memoria para extraer sus datos
        Alumno memory a = alumnos[i];
        return (a.nombre, a.edad);

        // Opción 2 (alternativa directa):
        // return (alumnos[i].nombre, alumnos[i].edad);
    }
}