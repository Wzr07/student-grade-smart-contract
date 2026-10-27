
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentGradesV3 {
    address public owner;

    mapping(address => uint256) private grades;

    event GradeUpdated(
        address indexed student,
        uint256 newScore
    );

    constructor() {
        owner = msg.sender;
    }

    function setGrade(
        address student,
        uint256 newScore
    ) public {
        require(msg.sender == owner, "Not authorized");
        require(newScore <= 100, "Invalid score");

        grades[student] = newScore;

        emit GradeUpdated(student, newScore);
    }

    function getGrade(
        address student
    ) public view returns (uint256) {
        return grades[student];
    }
}
