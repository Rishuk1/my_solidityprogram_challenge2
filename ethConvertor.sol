pragma solidity ^0.5.0;
contract mycontract{
    // ok so lets say i have to firstly get some ethers in the form of uint value from the user so lets do that first
    uint myEthervalue;
    function setterEther(uint _myEthervalue) public {
        myEthervalue=_myEthervalue;
    }
    function getterEther() public view returns (uint){
         return myEthervalue;
    }
    function convertToWei() public view  returns (uint){
    return (myEthervalue*(10**18));
    }
    function convertToGwei() public view  returns (uint){
    return (myEthervalue*(10**9));
    }
}
