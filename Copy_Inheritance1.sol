pragma solidity ^0.5.3;

contract A {
    event Log(string message);
    
    function foo() public {
        emit Log("A.foo was called");
    }

    function bar() public {
        emit Log("A.bar called ");
    } 
}

contract B  is A {
    function foo() public {
        emit Log("B.foo was called");
        A.foo();
    }

    function bar() public {
        emit Log("B.bar called ");
        super.bar();
    } 
}

contract C is A {   
    function foo() public {
        emit Log("C.foo was called");
        A.foo();
    }

    function bar() public {
        emit Log("C.bar called ");
        super.bar();
    } 
}

contract D is B, C {
}