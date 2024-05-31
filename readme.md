# Vault Smart Contract

Este repositorio contiene un contrato inteligente de una bóveda (`Vault`) escrito en Solidity. El contrato permite a los usuarios depositar y retirar fondos en forma de Ether (ETH).

## Funcionalidades

### Depositar Fondos

Los usuarios pueden depositar fondos en el contrato utilizando la función `deposit`. Los fondos depositados se registran en un mapeo que mantiene el saldo de cada dirección.

### Retirar Fondos

Los usuarios pueden retirar todos los fondos que hayan depositado en el contrato utilizando la función `withdrawAll`. La función transfiere todos los fondos de vuelta al usuario y actualiza su saldo en el mapeo a cero.


## Cómo Usar

### Prerrequisitos

1. Accede a [Remix](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.10+commit.fc410830.js)
2. Tener una billetera compatible con Ethereum (por ejemplo, MetaMask).

### Desplegar el Contrato en Remix

1. Accede a [Remix](https://remix.ethereum.org/).
2. Crea un nuevo archivo y pega el código del contrato.
3. Compila el contrato seleccionando la versión 0.8.10 de Solidity.
4. Despliega el contrato:
   - En el menú "Deploy & Run Transactions", selecciona el entorno deseado (por ejemplo, "Injected Web3" para usar MetaMask).
   - Asegúrate de tener suficiente ETH en la cuenta seleccionada para cubrir los costos de gas.
   - Haz clic en "Deploy".

### Interactuar con el Contrato en Remix

Una vez desplegado el contrato, puedes interactuar con él a través de la interfaz de Remix.

#### Depositar Fondos

1. En la sección "Deployed Contracts", expande el contrato `Vault`.
2. En la función `deposit`, ingresa el valor en ETH que deseas depositar en el campo "Value" (por ejemplo, `1` para depositar 1 ETH).
3. Haz clic en `transact` para realizar el depósito.

#### Retirar Fondos

1. En la sección "Deployed Contracts", expande el contrato `Vault`.
2. Haz clic en la función `withdrawAll` para retirar todos tus fondos.

