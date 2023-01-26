pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Dex {
    IERC20 public associatedToken;

    uint price;
    address owner;

    constructor(IERC20 _token, uint _price) {
        associatedToken = _token;
        owner = msg.sender;
        price = _price;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the owner");
        _;
    }

    function sell() external onlyOwner {}
}
