// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.26;

import "forge-std/Test.sol";

import "src/OrcaCoin.sol";

contract OrcaCoinTest is Test{
OrcaCoinContract orcaCoin;

function setUp() public{
orcaCoin = new OrcaCoinContract(address(this));
}
function testInitialSupply() public view {
    assert(orcaCoin.totalSupply()==0);
}
    
}