// Maps are created with the syntax mapping(keyType => valueType).
// The keyType can be any built-in value type, bytes, string, or any contract.
// valueType can be any type including another mapping or an array.
// Mappings are not iterable.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract nestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr, uint _i) public view returns (bool) {
        return nested[_addr][_i];
    }

    function set(address _addr, uint _i, bool _boo) public {
        nested[_addr][_i] = _boo;
    }

    function remove(address _addr, uint _i) public {
        delete nested[_addr][_i];
    }
}
