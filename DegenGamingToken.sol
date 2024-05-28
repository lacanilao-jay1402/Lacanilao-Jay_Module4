// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenGamingToken is ERC20 {
    address public owner;

    
    // Event to log ownership transfer
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    // Modifier to restrict function access to the owner
    modifier onlyOwner() {
        require(owner == msg.sender, "Caller is not the owner");
        _;
    }

    // Constructors to initialize the contract with the name and symbol of the token and set the owner
    constructo ERC20("Degen Gaming", "DGM") {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), owner);
    }

    // Function to mint new tokens, restricted to the owner only
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens from the caller's account
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Function to redeem tokens for in-game items, burns the tokens
    function redeem(uint256 amount, string memory item) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount, item);
    }

    // Event to log redemption of tokens for items
    event Redeem(address indexed user, uint256 amount, string item);

    // Function to transfer ownership to a new address
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

}

    

