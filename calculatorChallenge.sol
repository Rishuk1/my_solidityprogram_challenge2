pragma solidity ^0.5.0;
contract calculator{
    // firstly we want two numbers from the user
    uint num1;
    uint num2;
    function setterfunction(uint _num1,uint _num2) public {
        num1=_num1;
        num2=_num2;
    }
    function getterfunction1() public view returns(uint){
        return num1;
      
    }
    function getterfunction2() public view returns(uint){
     
        return num2;
    }

    function addFunction() public view returns(uint ) {
        return (num1+num2);
    }
    function subFunction() public view returns(int){
        return (int)(num1-num2);
    }
    function mulFunction() public view returns(uint){
        return (num1*num2);
    }
    function divideFunction() public view returns(uint){
        require(num2!=0);
        return (num1/num2);
    }
    
    
}
