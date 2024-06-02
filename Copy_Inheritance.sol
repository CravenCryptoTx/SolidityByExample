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
    function foo() public pure returns (string memory) {
        return "A";
    }
}

contract B { 
    function foo() public pure returns (string memory) {
        return "B";
    }
}
    
contract C is A, B {

}

contract D is A, C {
    
}