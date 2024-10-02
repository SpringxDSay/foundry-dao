// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {TimelockController} from  "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    // minDelay: how long you wait before executing
    // proposers: list of addresses that can propose
    // executors: list of addresses that can execute
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors) TimelockController(minDelay, proposers, executors, msg.sender) {}
}