// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Ownable {
    address payable public _owner;

    constructor() {
    _owner = payable(msg.sender);
}


    modifier onlyOwner() {
        require(isOwner(), "You're not the owner"); // Bạn không phải chủ sở hữu
        _;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == _owner);
    }
}