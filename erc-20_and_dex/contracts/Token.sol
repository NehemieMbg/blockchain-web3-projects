// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor(uint initialSupply) ERC20("NemCoin", "NCM") {
        _mint(msg.sender, initialSupply);
    }
}
