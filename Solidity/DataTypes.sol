// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract MyContract {
    string constant ans = "Answer";
    int256 x = -1;
    uint256 myUnit = 1;
    bool b = true;

    enum State {
        Waiting,
        Ready,
        Active
    }
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function Ready() public {
        state = State.Active;
    }

    function Active() public view returns (bool) {
        return state == State.Active;
    }

    int256[] public array;

    function init() public {
        for (int256 i = 0; i < 10; i++) 
            array.push(i + 1);
    }
}
