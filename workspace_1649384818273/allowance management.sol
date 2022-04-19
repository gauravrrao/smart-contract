//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract project{

    receive() payable external
    {

    }

    function checkBal() public view returns(uint)
    {
    return address(this).balance;
    
    }

    mapping(address => uint) public allownances;

    // address public owner;

    // constructor(){
    //     owner= msg.sender;
    // }

    function addAllowances(address _to, uint amt ) public onlyOwner{
        // require(owner == msg.sender,"Not Owner");
        allownances[_to] +=amt;
    }
}