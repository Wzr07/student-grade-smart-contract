
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentGrade {
    uint256 private score;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setScore(uint256 newScore) public {
        require(msg.sender == owner, "Not authorized");
        require(newScore <= 100, "Invalid score");
        score = newScore;
    }

    function getScore() public view returns (uint256) {
        return score;
    }
}
