pragma solidity ^0.8.0;
library additoin{
    function add(uint x , uint y) internal pure returns (uint ){
        return x+y;
    }
}
contract LibraryContract{
    function returnAdd(uint x , uint y) public pure returns (uint){
       return additoin.add(x,y);
    }

}