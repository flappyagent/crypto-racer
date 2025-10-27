// contracts/RaceTimes.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RaceTimes {
    mapping(address => uint256) public bestTime;
    event LapRecorded(address indexed racer, uint256 time);

    function recordLap(uint256 time) external {
        if (bestTime[msg.sender] == 0 || time < bestTime[msg.sender]) {
            bestTime[msg.sender] = time;
            emit LapRecorded(msg.sender, time);
        }
    }
}
