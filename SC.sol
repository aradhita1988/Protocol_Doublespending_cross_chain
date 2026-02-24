// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Csuper {

    event SecretKeyGenerated(address user, uint P);
    event EclipseAttackDetected(uint mainId, uint sideId);

    uint public batchCounter;

    mapping(address => uint) public secretKeys;
    mapping(uint => bytes32) public batchRoots;

    function requestSecretKey(uint P) external returns (uint) {
        uint SK = uint(
            keccak256(
                abi.encodePacked(msg.sender, block.timestamp, P)
            )
        ) % (P - 1) + 1;

        secretKeys[msg.sender] = SK;
        emit SecretKeyGenerated(msg.sender, P);
        return SK;
    }

    function registerBatch(uint id, bytes32 root) external {
        batchRoots[id] = root;
    }

    function auditBatches(uint mainId, uint sideId) external {
        if (batchRoots[mainId] != batchRoots[sideId]) {
            emit EclipseAttackDetected(mainId, sideId);
        }
    }
}

