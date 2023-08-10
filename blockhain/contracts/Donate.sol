//SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.9;

contract Donate {
    address payable owner;
    address payable[] charityAddresses;
    uint256 totalDonationsAmount;
    uint256 highestDonation;
    address payable highestDonor;


    ///Validate user balance
    modifier validateUserBalance(uint amountToDonate) {
        require (address(this).balance > amountToDonate, 'You dont have enough balance' );
        _;
    }

    /// Validates that the sender originated the transfer is different than the target destination.
    modifier validateDestination(address payable destinationAddress) {
        require(msg.sender != destinationAddress, 'Sender and recipient cannot be the same.');
        _;
    }

     /// Validates that the charity index number provided is a valid one.
    /// The target charity index to validate. Indexes start from 0 and increment by 1.
    modifier validateCharity(uint256 charityIndex) {
        require(charityIndex <= charityAddresses.length - 1, 'Invalid charity index.');
        _;
    }

     /// Validates that the amount to transfer is not zero.
    modifier validateTransferAmount() {
        require(msg.value > 0, 'Transfer amount has to be greater than 0.');
        _;
    }

   

     event Donation(
        address indexed _donor,
        uint256 _value
    );

    function deposit(address payable destinationAddress, uint256 charityIndex, uint256 donationAmount) public validateDestination(destinationAddress)
    validateTransferAmount() validateUserBalance (donationAmount) validateCharity(charityIndex) payable {
      
        charityAddresses[charityIndex].transfer(donationAmount);

        emit Donation(msg.sender, donationAmount);

        totalDonationsAmount += donationAmount;

        if (donationAmount > highestDonation) {
            highestDonation = donationAmount;
            highestDonor = payable(msg.sender);
        }
    }

     /// Returns all the available charity addresses.
    function getAddresses() public view returns (address payable[] memory) {
        return charityAddresses;
    }

    /// Returns the total amount raised by all donations towards any charity.
    function getTotalDonationsAmount() public view returns (uint256) {
        return totalDonationsAmount;
    }

    /// Returns the address that made the highest donation, along with the amount donated.
    function getHighestDonation() public view returns (uint256, address payable)  {
        return (highestDonation, highestDonor);
    }

   
}