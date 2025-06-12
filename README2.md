# Subasta - Trabajo Práctico

Este contrato implementa una subasta en la red Sepolia con:

- **Constructor**: define el ítem y la duración en minutos.  
- **placeBid()**: hacer ofertas válidas (más del 5% que la oferta actual).  
- **withdraw()**: retirar fondos de ofertas superadas.  
- **endAuction()**: finalizar la subasta (solo vendedor y cuando termina el tiempo).  
- **getAuctionDetails()**: ver detalles de la subasta.  
- **getAllBids()**: ver todas las ofertas realizadas.

---

### Características

- Subasta con tiempo limitado y extensión automática si hay oferta en últimos 10 minutos.  
- Comisión del 2% para el vendedor al final.  
- Reembolso de fondos para ofertas perdedoras.  
- Eventos para avisar nuevas ofertas y fin de subasta.

---

### Cómo usar

1. Desplegar en Sepolia con:  
   - Nombre del ítem (ejemplo: `"MacBook Pro"`)  
   - Duración en minutos (ejemplo: `5`)

2. Usar funciones para ofertar, retirar fondos, ver estado y finalizar.

---

### Enlace al contrato verificado

[Ver en Etherscan Sepolia](https://sepolia.etherscan.io/address/0x11440C14f5b96f0b68900080d66dC04714f1aA6e#code)

