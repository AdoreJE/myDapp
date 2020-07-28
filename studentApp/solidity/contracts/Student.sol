//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.7.0;

contract Student {
    struct studentInfo {
        uint256 id;
        string name;
        uint256 age;
        uint256 grade;
    }

    uint256[] public studentList;
    mapping(uint256 => studentInfo) stud;

    event SetStudentEvent(
        uint256 indexed id,
        string name,
        uint256 indexed age,
        uint256 indexed grade
    );

    function setStudent(
        uint256 _id,
        string memory _name,
        uint256 _age,
        uint256 _grade
    ) public {
        require(validStudent(_id) == true, "already exist");
        studentList.push(_id);
        stud[_id] = studentInfo(_id, _name, _age, _grade);
        emit SetStudentEvent(_id, _name, _age, _grade);
    }

    function getStudent(uint256 _id)
        public
        view
        returns (
            uint256 id,
            string memory name,
            uint256 age,
            uint256 grade
        )
    {
        return (stud[_id].id, stud[_id].name, stud[_id].age, stud[_id].grade);
    }

    function getStudentList() public view returns (uint256[] memory) {
        return studentList;
    }

    function validStudent(uint256 id) public view returns (bool) {
        for (uint256 i = 0; i < studentList.length; i++) {
            if (studentList[i] == id) {
                return false;
            }
        }
        return true;
    }
}
