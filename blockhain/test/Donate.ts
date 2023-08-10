import { loadFixture } from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { ethers } from "hardhat";

describe("Events", function () {
  async function deployOneYearLoanFixture() {
    const [owner, otherAccount] = await ethers.getSigners();
    const Donate = await ethers.getContractFactory("Donate");
    const donate = await Donate.deploy();

    return { donate, owner, otherAccount };
  }

  it("Should deposit donation", async function () {
    const { donate, owner } = await loadFixture(deployOneYearLoanFixture);

    const destinationAddress = "";
    const charityIndex = 0;
    const donationAmount = 200;
    await donate.deposit(
      destinationAddress,
      charityIndex,
      donationAmount.toString()
    );
  });
});
