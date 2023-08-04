pragma solidity ^0.8.0;

contract mysalary {

    uint public totalmysalaryrecived;
    mapping(address => bool) public hasmysalarygiven;

    function mysalarygiven() public {
        require(!hasmysalarygiven[msg.sender], "Already Given"); 

        totalmysalaryrecived++;
        hasmysalarygiven[msg.sender] = true;

        if (totalmysalaryrecived > 70) {
            revert("employee limit exceeded"); 
        }

        assert(totalmysalaryrecived <= 70); 
    }
}
