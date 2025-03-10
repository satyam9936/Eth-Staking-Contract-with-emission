// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.26;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OrcaCoinContract is ERC20 { 
    address stakingContract;
    address owner;

    constructor(address _stakingContract) ERC20("Orca", "ORC") {
        stakingContract = _stakingContract;
        owner = msg.sender;
    }

    function mint(address account, uint256 value) public {
        require(msg.sender == stakingContract);
        _mint(account, value);
    }

    function updateStakingcontract(address _stakingContract) public {
        require(msg.sender == owner);
        stakingContract = _stakingContract; // Missing semicolon added
    }
}
