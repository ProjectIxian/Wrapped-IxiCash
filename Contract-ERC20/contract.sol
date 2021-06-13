// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.6;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract WIXI is ERC20, Ownable  {

    constructor() ERC20("Wrapped IxiCash", "WIXI") {
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
    
    function decimals() public view virtual override returns (uint8) {
      return 8;
    }
}
