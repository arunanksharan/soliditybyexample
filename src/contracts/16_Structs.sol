// You can define your own type by creating a struct.
// They are useful for grouping together related data.
// Structs can be declared outside of a contract and imported in another contract.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ToDos {
    struct ToDo {
        string text;
        bool completed;
    }

    // An array of 'Todo' structs
    ToDo[] public todos;

    function create(string calldata _text) public {
        // Call like a function
        todos.push(ToDo(_text, false));

        // Key Value Mapping
        todos.push(ToDo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        ToDo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    // Getter automatically created for todos
    function get(
        uint _index
    ) public view returns (string memory text, bool completed) {
        ToDo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function updateText(uint _index, string calldata _text) public {
        ToDo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        ToDo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
