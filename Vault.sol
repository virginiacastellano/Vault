// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Vault {
    // Mapeo que mantiene el saldo de cada dirección
    mapping(address => uint) public balances;

    // Función para depositar fondos en el contrato
    function deposit() public payable {
        // Incrementa el saldo del remitente con el valor enviado
        balances[msg.sender] += msg.value;
    }

    // Función para retirar todos los fondos del remitente
    function withdrawAll() public {
        // Obtiene la dirección del remitente
        address beneficiary = msg.sender;
        // Obtiene el saldo del remitente
        uint amount = balances[msg.sender];
        
        // Realiza la transferencia de fondos al remitente
        // Usando 'call' para evitar problemas de límite de gas con 'transfer'
        (bool success, ) = address(beneficiary).call{value: amount}("");
        
        // Verifica que la transferencia fue exitosa
        require(success, "Transfer failed.");
        
        // Establece el saldo del remitente a 0
        balances[msg.sender] = 0;
    }
}
