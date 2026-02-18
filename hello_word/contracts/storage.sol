// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
 * @title Storage Number
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
*/
contract Storage {
    uint number;

    /*
     * @storeNumber(): publc function yang menyimpan number di Contract Storage{}
    */
    function storeNumber(uint num) public  {
        number = num;
    }

    /*
     * @retrieveNumber(): public view yang mengembalikan number yang disimpan
    */
    function retrieveNumber() public view  returns(uint) {
        return number;
    }

}
