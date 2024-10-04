# Bank Smart Contract

This is a simple Solidity-based Ethereum smart contract that simulates a basic banking system. Users can deposit, withdraw, and transfer funds to others, provided certain conditions are met.

## Features

- **Deposit:** Users can deposit Ether into their accounts.
- **Withdraw:** Users can withdraw Ether from their accounts, ensuring they maintain a minimum balance.
- **Transfer:** Users can transfer Ether to another user, provided they have enough balance to do so.
- **View Balance:** Users can check their current balance at any time.

## Smart Contract Details

### Contract Name: `Bank`

### Key Components

- `owner`: The address of the contract creator.
- `minBalance`: Minimum balance required to make a withdrawal or transfer (1 Ether).
- `balances`: A mapping that stores each user's balance (address => balance).

### Functions

- **Constructor**: `Bank()` 
    - Initializes the contract by setting the `owner` to the address that deployed the contract.

- **deposit()** (payable)
    - Allows users to deposit Ether into their account. The Ether amount is added to the sender's balance.

- **withdraw(uint amount)**
    - Allows users to withdraw Ether from their account. The withdrawal is only allowed if the user maintains the minimum balance (`minBalance`) after the withdrawal.

- **transfer(address receiver, uint amount)**
    - Allows users to transfer Ether to another user's account. The sender must have enough balance to maintain the `minBalance` after the transfer.

- **getBalance() returns (uint)**
    - Returns the current Ether balance of the calling user.

## Requirements

- **Solidity Version**: `^0.4.0`
- **Minimum Balance**: 1 Ether (to ensure that users don't withdraw all funds, ensuring stability for other operations).

## Usage

1. **Deploy the contract** using any Ethereum-compatible platform (such as Remix, Hardhat, or Truffle).

2. **Deposit Ether** into your account:
    ```solidity
    deposit();
    ```

3. **Withdraw Ether** from your account:
    ```solidity
    withdraw(amount);
    ```

4. **Transfer Ether** to another account:
    ```solidity
    transfer(receiver_address, amount);
    ```

5. **Check your balance**:
    ```solidity
    getBalance();
    ```

## Example

1. A user deposits 5 Ether.
2. The user attempts to withdraw 3 Ether but is required to keep a minimum of 1 Ether in the account.
3. The user transfers 1 Ether to another user, which succeeds if the balance remains above the minimum required.

## License

This project is open-source and available under the MIT License.
