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

    // Mapping to store redeemed items for each user
    mapping(address => string[]) private redeemedItems;

    // Constructor to initialize the contract with the name and symbol of the token and set the owner
    constructor() ERC20("Degen Gaming", "DGM") {
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
        _burn(msg.sender, amount);
        redeemedItems[msg.sender].push(item);
        emit Redeem(msg.sender, amount, item);
    }

    // Event to log redemption of tokens for items
    event Redeem(address indexed user, uint256 amount, string item);

    // Function to transfer ownership to a new address
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    // Function to get the count of redeemed items for a user
    function getRedeemedItemCount(address user) public view returns (uint256) {
        return redeemedItems[user].length;
    }

    // Function to get a redeemed item by index for a user
    function getRedeemedItem(address user, uint256 index) public view returns (string memory) {
        require(index < redeemedItems[user].length, "Index out of bounds");
        return redeemedItems[user][index];
    }
}

    

