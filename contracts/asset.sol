pragma solidity ^0.4.4;

contract land_bargain {

    // enum Status { NotExist, Pending, Approved, Rejected }
    struct PropertyDetail {
// 		Status status;
		uint value;
		uint area;
		address currOwner;
	}
	mapping(address => PropertyDetail) public properties;
	
	address[] public registerdProperties;
	address[] public availableProperties;
    
    function setRegistedProperty(address _land_address ,uint _value, uint _area, address _currOwner) public {
        var property = properties[_land_address];
        
        property.value = _value;
        property.area = _area;
        property.currOwner = _currOwner;
        
        registerdProperties.push(_land_address) -1;
    }
    function getPropertyDetail(address _land_address) view public returns(uint, uint, address){
        return(properties[_land_address].value, properties[_land_address].area, properties[_land_address].currOwner);
    }
    
    function setAvailableProperty(address _land_address) public {
        availableProperties.push(_land_address);
    }
    
    // function removeAvailableProperty(address _land_address) public{
        
    // }
    
    function getAvailableProperty() view public returns(address[]){
        return availableProperties;
    }

}
