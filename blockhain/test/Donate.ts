import { loadFixture } from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { ethers } from "hardhat";

describe("Events", function () {
  async function deployOneYearLoanFixture() {
    const [owner, donationAddress] = await ethers.getSigners();
    const Donate = await ethers.getContractFactory("Donate");
    const donate = await Donate.deploy();

    return { donate, owner, donationAddress };
  }

  it("Should deposit donation", async function () {
    const { donate, owner, donationAddress } = await loadFixture(deployOneYearLoanFixture);
    const charityIndex = 0;
    const donationAmount = ethers.parseEther("10");
    await donate.deposit(
      donationAddress,
      charityIndex,
      donationAmount,
      {value: donationAmount}
    );
  });
});
