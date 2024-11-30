// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract A{
    function GetAvalue() external pure returns(string memory){
        return "contract A di Panggil";
    }
}

contract B is A{

}

contract C is A{

}

contract caller {
    B contractB = new B();
    C contractC = new C();

    function wariskan() public view returns (string memory, string memory){
        return (contractB.GetAvalue(), contractC.GetAvalue() );
    }
}
// contract caller {
//     // Buat instance dari kontrak B dan C
//     B contractB = new B();
//     C contractC = new C();

//     // Fungsi wariskan yang mengembalikan dua nilai dari pemanggilan fungsi GetAvalue pada kontrak B dan C
//     function wariskan() public view returns (string memory, string memory) {
//         return (contractB.GetAvalue(), contractC.GetAvalue());
//     }
// }