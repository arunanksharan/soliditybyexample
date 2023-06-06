// Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
// storage - variable is a state variable (store on blockchain)
// memory - variable is in memory and it exists while a function is being called
// calldata - special data location that contains function arguments

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocations {
    uint[] public arr; // [1,2,3]
    mapping(uint => address) map; // {1: 0x1, 2: 0x2}

    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);

        MyStruct storage myStruct = myStructs[1];

        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
}
