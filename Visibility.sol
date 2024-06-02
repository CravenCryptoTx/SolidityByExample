pragma solidity ^0.5.3;

/* the 4 visibility keywords
 Private only inside contract that defines it
 Internal, visible inside contract & child contract, but not by other contracts & accounts
 Public visible by any contract & account
 External FUNCTION can only be called by other contracts and acccounts.
 External STATE variable does not exist as a concept.
*/

contract Base {
    function privateFunc() private pure returns (string memory) {
        return "private func called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns (string memory) {
        return "internal func called";
    }
    
    function testInernalFunc() public pure returns (string memory) {
        return internalFunc();
    }
}

contract Child is Base {  
    function testInernalFunc() public pure returns (string memory) {
        return internalFunc();
    }
}