# Celo-Solidity-Learn

curso de introducción a Celo con Solidity

## Conoce la red de Celo

- Entender los principio de SmartContract, desarrollar el primer contrato inteligente, saber como funcionan y hacer uno que se adapte a nuestras necesidades.

- Entender las herramientas de la red de Celo que proporciona a los desarrolladores.

## ¿Por qué Celo?

- Blockchain, con 2 ventajas
  - Efectúa los pagos con una moneda estable (stable coin) con un valor similar al dolar
  - Fuerte orientación al pago desde smartphone, puedes recibir el pago al número de teléfono móvil (_similar a un mensaje de whatsapp que va al número de teléfono, similar al método de pago de BIZUM_)

## Herramientas

- **Remix IDE**: editor de código, nuestro principal IDE (_incluye compilador, y ambiente de prueba_)
- **Celo wallet**, para manejar fondos de prueba, ambiente móvil (_android, iOS_) y ambiente web.
- **Alfajores Testnet**, nos muestra el explorador de bloques y las transacciones, puedes crear fondos “criptomonedas de prueba”
- **Contract Kit**, librería de Celo que nos permite desarrollar interfaces gráficas para que interactúe con la blockchain (_leer saldo de la cuenta, leer estado de la cadena, envío de transacciones_).
- **WalletConnect** , nos permite interacción sencilla entre billeteras basadas en dispositivos móviles y la blockchain de Celo (_procesar pagos, transacciones_).

## Desarrollando para la EVM

- **EVM** capa lógica que se inserta entre el hardware que ejecuta una aplicacion y el código que va a ejecutar.
- _Inspiarado en la JVM (java virtual machine)_.
- Se programa en el lenguaje Solidity, (lenguaje con sintaxis similar javascript) se compila y devuelve un fichero en Bytecodes (_instrucciones en un lenguaje complejo que puede ser ejecutadas por al EVM_).

## Transacciones

3 tipos de transacciones:

- Una transferencia de CeloGLD (_equivalente al ether_).
- Desplegar un Smart Contract en la red.
- Llamar a un método de un Smart Contract (_que previamente esté desplegado en la red_).

### Costo de ejecución:

- Hay que pagar un fee (_CeloGLD o Celo Dolar_).
- En función del número de transacciones se contabiliza el costo.
- Modelo de cobro EIP 1559 (_también implementado por la red de Etherium_), mas predecible, mas estable y se puede conocer el total antes de ejecutarlo.

## Estructura del Smart Contract

### Cabecera

- **Prama** instrucciones que indica la versión de compilador
- **Include** referencia a otros contratos

### Declaración del contrato

- **Nombre**
- Características adicionales

### Variables de estado

- Información que va a manejar el contrato inteligente
saldo, texto y número

### Métodos o funciones

- Reglas que tiene el contrato para hacer modificaciones en las variables de estado

#### Interacción con la cadena de bloques

- Funciones **view** no hacen modificaciones, solo lee el estado de la cadena de bloques, no pasan por el algoritmo de consenso y pasan por un solo nodo (local) , no tiene un costo en GAS, es gratis.
- Funciones **normales** hacen modificaciones o escrituras sobre las variables de estado, requiere que los nodos alcancen consenso (_consistente, coherente y valido_) y tiene un costo.
- Funciones **puras** no leen ni escriben, son cálculos y no tienen tampoco costo.
