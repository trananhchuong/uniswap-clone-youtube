// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Transactions {
    struct Transaction {
        uint timestamp;
        address from;
        address to;
        uint amount;
    }

    event TestStruct(Transaction);

    event Transfer(
        address sender,
        address receiver,
        uint amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    function publishTransaction(
        address payable receiver,
        uint amount,
        string memory message,
        string memory keyword
    ) public {
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword 
        );
    }

    function publishTransaction2(Transaction memory testParam) public {
        emit TestStruct(testParam);
    }
}
