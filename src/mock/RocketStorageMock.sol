// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

/// @notice Mocks just the address storage of RocketStorage
contract RocketStorageMock {
    mapping(bytes32 => address) addressStorage;

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function setContractAddress(string calldata _name, address _value) external {
        require(msg.sender == owner);
        bytes32 key = keccak256(abi.encodePacked("contract.address", _name));
        addressStorage[key] = _value;
    }

    function setAddress(bytes32 _key, address _value) external {
        require(msg.sender == owner);
        addressStorage[_key] = _value;
    }

    function getAddress(bytes32 _key) external view returns (address) {
        return addressStorage[_key];
    }
}
