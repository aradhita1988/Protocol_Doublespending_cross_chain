// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICsuper {
    function registerBatch(uint, bytes32) external;
}

contract Cmain {

    ICsuper public csuper;
    uint public counter;

    constructor(address _csuper) {
        csuper = ICsuper(_csuper);
    }

    function submitBatch(bytes32 root) external {
        counter++;
        csuper.registerBatch(counter, root);
    }
}

