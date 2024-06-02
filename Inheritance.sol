pragma solidity ^0.5.3;

// contract A {   
//     // Not sure what keyword memory does and alternative is storage right?
//     function getContractName() public pure returns (string memory) {
//         return "Contract A";
//     }
// }

// contract B is A {
//     function getContractName(uint i) public pure returns (string memory) {
//         return "Contract B";
//     }

// }

contract A {
    string public name;

    constructor(string memory _name) public {
        name=_name;
    } 
}

contract B is A {
    constructor(string memory _name) A(_name) public {
        
    }
}