// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract MyContract {

    struct Person {
        string _firstName;
        string _lastName;
    }
    mapping(uint256 => Person) public People;
    uint256 public PeopleCount = 0;    

    function AddPeople(string memory _firstName, string memory _lastName)
        public
    {
        IncrementPeopleCount();
        People[PeopleCount]=Person(_firstName,_lastName);
    }
    function IncrementPeopleCount() internal {
        PeopleCount++;
    }
}
