pragma solidity ^0.5.3;

contract FuncModifier {
    // Examples
    // 1. Restricting write access (basic syntax)
    // 2. Validate inputs (inputs, why useful?)
    // 3. Reentrancy guard (reentrancy hack)

    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }

    // function onlyOwner() public view {
    //     require(msg.sender == owner, "Not Owner!");
    // }

    // function validAddress(address _a) public pure {
    //     require(_a != address(0), "Not valid address!");
    // }

    // function changeOwner(address _newOwner) public {
    //     onlyOwner();
    //     validAddress(_newOwner);
    //     owner = _newOwner;
    // }

    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner!");
        _;
    }

    modifier validAddress(address _a) {
        require(_a != address(0), "Not valid address!");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }


    uint public x = 10;
    bool locked;

    modifier noReentrancy() {
        require(!locked, "Locked");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }


}