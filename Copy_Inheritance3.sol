pragma solidity ^0.5.3;

contract A {
    address public addr = 0x0000000000000000000000000000000000000001;

    function getAddress() public view returns (address) {
        return addr;
    }
}

contract B is A {
    // Wrong way to override!
    address public addr = 0x0000000000000000000000000000000000000002;
}

contract C is A {
    // Right way to override state variable.
    constructor() public {
        addr =  0x0000000000000000000000000000000000000003;
    }
}