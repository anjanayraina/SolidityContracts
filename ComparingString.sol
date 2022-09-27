pragma solidity ^0.8.0;


contract CompareString{
function isSolidity(string memory _language) public {
  // Compare string keccak256 hashes to check equality
  if (keccak256(abi.encodePacked('Solidity')) == keccak256(abi.encodePacked(_language))) {
    // do something here...
  }
}
}