# student-grade-smart-contract
# Student Grade Smart Contract

My first Ethereum smart contract project, built with Solidity and tested using Remix IDE.

## Features

- Store and retrieve a student grade.
- Allow only the contract owner to update the grade.
- Validate that grades are between 0 and 100.
- Reject unauthorized or invalid transactions.

## Technologies Used

- Solidity ^0.8.20
- Remix IDE
- Ethereum Virtual Machine (Remix VM)

## How to Test

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Import `StudentGrade.sol`.
3. Compile the contract using a compatible Solidity compiler.
4. Deploy using Remix VM.
5. Call `setScore(90)` and verify that `getScore()` returns 90.
6. Try `setScore(120)` and verify that the transaction reverts.
7. Switch to another account and verify that `setScore(85)` fails with "Not authorized".

## Concepts Demonstrated

- Smart contract deployment
- State variables and functions
- Constructors and `msg.sender`
- Input validation using `require()`
- Access control
- Transaction reverts

## Future Improvements

- Support multiple students.
- Add events for grade updates.
- Create automated tests with Foundry.
- Build a React frontend.
