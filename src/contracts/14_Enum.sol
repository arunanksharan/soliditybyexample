// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Solidity supports enumerables and they are useful to model choice and keep track of state.
// Enums can be declared outside of a contract.

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipping,
        Accepted,
        Rejected,
        Canceled
    }
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}
