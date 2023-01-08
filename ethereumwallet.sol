// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract tech4dev {
/*
This contract can receive ether.
It has a getBalance and Withdraw Function
*/
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    } 
    receive() external payable{}

    //getBalance function
    function getBalance() public view returns (uint) {
        return address(this).balance;

    }

    //Withdraw function
    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Error you are not the owner");
        payable(msg.sender).transfer(_amount);
    }
}