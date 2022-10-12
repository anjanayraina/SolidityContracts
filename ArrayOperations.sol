// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract StudentList {
    struct Student{
        string name;
        uint age;
    }
    // 
    Student[] public students;

    function create(string memory _name, uint _age) public {
        students.push(Student({name:_name, age:_age}));
    }

    function updateAge(uint _index, uint _age) public {
        Student storage studentUpdate = students[_index];
        studentUpdate.age = _age;
    }

    function updateName(uint _index, string memory _name) public {
        Student storage studentUpdate = students[_index];
        studentUpdate.name = _name;
    }

    function getLength() public view returns (uint) {
        return students.length;
    }


    function getStudent(uint _index) public view returns (string memory name, uint age)  {
            Student storage studentEvr = students[_index];
            return (studentEvr.name, studentEvr.age);
    }


    // delete the last student
    function delLast() public {
        students.pop();
    }

    // delete student using index
    function remove(uint _index) public {
        require(_index < students.length, "index out of bound");
        for (uint i = _index; i < students.length - 1; i++) {
            students[i] = students[i + 1];
        }
        students.pop();
    }
}