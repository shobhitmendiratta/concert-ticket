// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTicket{
  uint256  numberofticket;
  uint256  ticketprice;
  uint256  totalamount;
  uint256  startat;
  uint256  endat;
  uint256  timerange;
  string  message = "buy your first event ticket";

  constructor(uint256 _ticketprice){
    ticketprice = _ticketprice;
    startat = block.timestamp;
    endat = block.timestamp + 7 days;
    timerange = (endat - startat) /60 /60 /24;
  }

function buyticket(uint256 _value) public returns (uint256 ticketid){
  numberofticket++;
  totalamount += _value;
  ticketid = numberofticket;  
}

function getamount() public view returns (uint256){
  return totalamount;
}

}
