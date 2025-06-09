// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address payable public seller;
    string public item;
    uint256 public highestBid;
    address payable public highestBidder;
    bool public active;

    constructor(string memory _item) {
        seller = payable(msg.sender);
        item = _item;
        highestBid = 0;
        highestBidder = payable(address(0));
        active = true;
    }

    // Ver los detalles de la subasta
    function getAuctionDetails() public view returns (
        address,
        string memory,
        uint256,
        address,
        bool
    ) {
        return (
            seller,
            item,
            highestBid,
            highestBidder,
            active
        );
    }

    // Realizar una oferta
    function placeBid() public payable {
        require(active, "La subasta no esta activa.");
        require(msg.value > highestBid, "La oferta debe ser mayor que la actual.");

        // Devolver fondos al ofertante anterior si existe
        if (highestBidder != address(0)) {
            (bool sent, ) = highestBidder.call{value: highestBid}("");
            require(sent, "Fallo al devolver fondos al ofertante anterior.");
        }

        highestBid = msg.value;
        highestBidder = payable(msg.sender);
    }

    // Finalizar la subasta
    function endAuction() public {
        require(msg.sender == seller, "Solo el vendedor puede finalizar la subasta.");
        require(active, "La subasta ya ha sido finalizada.");

        active = false;

        // Transferir los fondos al vendedor
        if (highestBid > 0) {
            (bool sent, ) = seller.call{value: highestBid}("");
            require(sent, "Fallo al transferir fondos al vendedor.");
        }
    }

    // Ver la oferta actual
    function getCurrentHighestBid() public view returns (uint256) {
        return highestBid;
    }
}
