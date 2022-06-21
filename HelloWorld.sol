// SPDX-License-Identifier: Unlicensed
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    // string message = "Hello world";
    string[] messages = ["Hello world"];

    event Message(string message);

    // function hello() public pure returns (string memory) {
    //     return "Hello world";
    // }

    // // Emitting an event makes function neither view nor pure
    // function hello() public returns (string memory) {
    //     emit Message("Hello world");
    //     return "Hello world";
    // }

    function hello() public returns (string memory) {
        emit Message(messages[messages.length - 1]);
        return messages[messages.length - 1];
    }

    function updateMessage(string memory newMessage) public {
        messages.push(newMessage);
    }
}