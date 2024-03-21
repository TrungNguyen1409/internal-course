// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherAirdrop {
    address payable public owner;
    address[] public recipientList = [
        0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,
        0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,
        0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB  
        ];

    constructor() {
        owner = payable(msg.sender);
    }

    function distributeEther() external payable {
        require(msg.sender == owner, "Only the contract owner can distribute Ether");
        require(recipientList.length > 0, "No recipients specified");
        require(msg.value >= recipientList.length * 0.1 ether, "Insufficient Ether sent");

        uint256 amountToSend = 0.1 ether;

        for (uint256 i = 0; i < recipientList.length; i++) {
            payable(recipientList[i]).transfer(amountToSend);
        }
    }

    function withdrawEther() external {
        require(msg.sender == owner, "Only the contract owner can withdraw Ether");
        owner.transfer(address(this).balance);
    }
}
