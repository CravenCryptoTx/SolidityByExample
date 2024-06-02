pragma solidity ^0.5.3;

contract X {
    event Log(string message);
    string public name;

    constructor(string memory _name) public {
        name = _name;
        emit Log(_name);
    } 
}

contract Y {
    event Log(string message);
    string public text;

    constructor(string memory _text) public {
        text = _text;
        emit Log(_text);
    }
}

contract B is X("Fixed Input"), Y("Another fixed input") {
}

contract C is X, Y {
    constructor() X("Another Way to Hard Code Input") Y("Another fixed input") public {

    }
}

contract D is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) public {

    }
}

contract E is X, Y {  
    constructor() X("X was called") Y("Y was called") public {

    }
}

// The order below in the constructor() is irrelevent
contract F is X, Y {
    constructor()  Y("Y was called") X("X was called") public {

    }
}