//Implement a simple bank application using a smart contract with the following functionalities
//Deposit the money
//Allow the withdrawal by keeping a minimum balance (set minimum balance as 1 ETH)
//Transfer money between two valid accounts

pragma solidity ^0.4.0;

contract Bank {
    address owner;
    uint minBalance = 1 ether;
    mapping (address => uint) balances;
    
    function Bank() {
        owner = msg.sender;
    }
    
    function deposit() payable {
        balances[msg.sender] += msg.value;
    }
    
    function withdraw(uint amount) {
        if (balances[msg.sender] >= amount + minBalance) {
            balances[msg.sender] -= amount;
            msg.sender.transfer(amount);
        }
    }
    
    function transfer(address receiver, uint amount) {
        if (balances[msg.sender] >= amount + minBalance && balances[receiver] + amount >= balances[receiver]) {
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
        }
    }
    
    function getBalance() constant returns (uint) {
        return balances[msg.sender];
    }
}





