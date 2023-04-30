// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract MyContract {
    string value;

    constructor() {
        value = "myValue";
    }

    function get() public view returns (string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}
