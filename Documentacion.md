# Subasta - Trabajo practico

Este contrato inteligente implementa una subasta con las siguientes funcionalidades:

## Funciones

- **constructor**: Inicializa la subasta
- **ofertar()**: Realiza una oferta válida
- **mostrarGanador()**: Devuelve el oferente ganador
- **mostrarOfertas()**: Lista de oferentes y montos
- **devolverDepositos()**: Devuelve los depósitos a perdedores (menos 2%)

## Eventos

- `NuevaOferta`
- `SubastaFinalizada`

## Detalles

- El contrato fue desplegado en la red Sepolia
- Solo se aceptan ofertas que superen al menos en 5% la mayor
- Reembolso parcial de ofertas previas
- Extiende la subasta si hay ofertas en los últimos 10 minutos

## Contrato verificado

[Ver contrato en Etherscan](https://sepolia.etherscan.io/address/0x36ff00A342b7f5FbF39CC7ffA7934C2ADF3c356d#code
