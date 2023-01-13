// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Shape {
    uint height;
    uint width;

    constructor(uint _height, uint _width) {
        height = _height;
        width = _width;
    }
}

contract Square is Shape {
    constructor(uint h, uint w) Shape(h, w) {}

    function getHeight() public view returns(uint) {
        return height;
    }

    function getArea() public view returns(uint) {
        return height * width;
    }
}