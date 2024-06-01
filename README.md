MyToken-Solidity Contract

This Solidity program is a simple token contract that demonstrates the basic functionality of creating, minting, and burning tokens. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to understand how token contracts work.

Description
This program is a contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has public variables to store details about the token (Token Name, Token Abbreviation, Total Supply), a mapping to store balances of addresses, and functions to mint and burn tokens. This program serves as a simple and straightforward introduction to Solidity programming and can be used as a stepping stone for more complex projects in the future.

Getting Started
Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at Remix Ethereum.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

solidity
Copy code
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables here
    string public tokenName = "benTennison";
    string public tokenAbbrv = "BTN";
    uint public totalSupply = 0;

    // Mapping variable here
    mapping(address => uint) public token_map;

    // Mint function
    function mintToken(address _addr, uint _value) public {
        totalSupply += _value;
        token_map[_addr] += _value;
    }

    // Burn function
    function burnToken(address _addr, uint _value) public {
        require(token_map[_addr] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        token_map[_addr] -= _value;
    }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mintToken and burnToken functions. Click on the "MyToken" contract in the left-hand sidebar, and then use the respective functions to mint and burn tokens.

Authors
Rishav Kumar
@RishuSo41048171
License
This project is licensed under the MIT License
