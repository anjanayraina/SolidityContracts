// SPDX-License-Identifier:MIT

pragma solidity ^0.8.14;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo  = Car({year: 1980, model: "Lamborghini", owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year  = 2000;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(Car("Ferrari", 2022, msg.sender));

        // Car memory _car = cars[0];
        // _car.model;
        // _car.year;
        // _car.owner;

        // modify the data cars[0] that is stored in the memory. 
        // that is why we use 'storage' rather than 'memory';
        Car storage _car = cars[0]; //modify the attributes of cars[0];
        _car.year = 1999;
        delete _car.owner;  // set to the default value;
        delete cars[1];     // reset to default value;

    }
}