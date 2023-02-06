//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract SimpleStorage{
    uint256 FavoriteNumber;


    struct People{
        uint256 FavoriteNumber;
        string name;
    }

     mapping (string => uint256) public nameToFavoriteNumber;

     People[] public people;

    function store (uint256 _FavoriteNumber) public {
        FavoriteNumber = _FavoriteNumber;
    }
    
     // View
     // Pure
    function retrieve () public view returns (uint256){
        return FavoriteNumber;
    }

     // Memory
     // Storage
     function AddPerson(string memory _name, uint256 _FavoriteNumber) public{
      people.push(People(_FavoriteNumber,_name));
      nameToFavoriteNumber [_name] = _FavoriteNumber;
     } 





}