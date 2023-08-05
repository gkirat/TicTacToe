# Tic Tac Toe Smart Contract

This is a Solidity smart contract that implements a simple Tic Tac Toe game on the Ethereum blockchain. Players can take turns making moves and the contract keeps track of the game state and the winner.

## Prerequisites

To deploy and interact with this smart contract, you will need the following:

- An Ethereum wallet (e.g., MetaMask) to deploy and interact with the contract on a testnet or the mainnet.
- An IDE or code editor (e.g., Remix) to compile and deploy the smart contract code.
- An Ethereum development environment (e.g., Ganache) for local testing and debugging.

## How to Use

1. Clone this repository to your local machine or download the `tictactoe.sol` file.
2. Open the `tictactoe.sol` file in your Solidity IDE or Remix.
3. Compile the smart contract and ensure there are no errors.
4. Deploy the contract to your preferred Ethereum network (testnet or mainnet) using your wallet and a suitable gas fee.
5. After deployment, you can interact with the contract using its functions through your Ethereum wallet.

## Functions

The smart contract provides the following functions:

- `Player1(uint inp) public`: Allows Player 1 to make a move by providing the input position `inp`.
- `Player2(uint inp) public`: Allows Player 2 to make a move by providing the input position `inp`.
- `showempty() public view returns (uint[9] memory)`: Allows anyone to view the current state of the Tic Tac Toe board.

## Game Rules

- Players take turns to make a move by specifying the position (0 to 8) they want to place their symbol (X for Player 1 and O for Player 2).
- The game will automatically determine the winner or declare it as a draw based on the positions filled by each player.

## Important Note

- This smart contract is designed for educational purposes and may not be suitable for use in production systems without additional security measures.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
