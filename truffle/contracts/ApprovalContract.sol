pragma solidity ^0.4.18;

contract ApprovalContract {

  address public sender;
  address public receiver;
  address constant public approver = 0x5aeda56215b167893e80b4fe645ba6d5bab767de;

  function constructor() public {
    // tbd
  }

  function deposit(address _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(this.balance);
  }

}