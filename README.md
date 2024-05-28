# Lacanilao-Jay_Module4
# Description
Creating ERC20 contract that can reward players and take their game to the next level. This Degen Gaming Task needs a functions such as Minting Tokens, Burning Tokens, Redeeming Tokens and Transferring Tokens.
# Challenge
Create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

# Functionality

Here's the breakdown of the functionalities after the contract has been deployed.

1. approve

Purpose: Allows a spender to spend up to a certain number of tokens on behalf of the owner.
Parameters:
spender: The address which will be allowed to spend the tokens.
amount: The maximum amount of tokens that the spender is allowed to spend.
Usage: This is typically used to set up an allowance for another contract or user to spend tokens on behalf of the owner.

2. burn

Purpose: Allows a user to destroy (burn) a specified amount of their own tokens, reducing the total supply.
Parameters:
amount: The number of tokens to burn.
Usage: This function can be used to remove tokens from circulation, often for deflationary purposes.

3. mint

Purpose: Allows the owner to create new tokens and assign them to a specified address.
Parameters:
to: The address that will receive the newly minted tokens.
amount: The number of tokens to mint.
Usage: This function is typically used to distribute tokens as rewards or to increase the total supply.

4. redeem

Purpose: Allows a user to redeem tokens for in-game items by burning a specified amount of their tokens.
Parameters:
amount: The number of tokens to redeem.
item: A string representing the item being redeemed.
Usage: This function can be used to exchange tokens for rewards or services within a platform.

5. redeemedItems

   Purpose: To check if the redeemed item has been successfully redeemed

6. redeemItemCount

    Purpose: To count the redeemed item

7. transfer

Purpose: Transfers tokens from the sender's account to a specified recipient.
Parameters:
recipient: The address that will receive the tokens.
amount: The number of tokens to transfer.
Usage: This function is used to send tokens from one user to another.

8. transferFrom

Purpose: Allows a spender to transfer tokens from one account to another, provided the spender has been approved to do so.
Parameters:
sender: The address to send tokens from.
recipient: The address to send tokens to.
amount: The number of tokens to transfer.
Usage: This function is typically used in conjunction with approve to allow a contract or user to spend tokens on behalf of another user.

# Author
Lacanilao, Jay B.
8210409@ntc.edu.ph
