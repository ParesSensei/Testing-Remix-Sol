// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Structure{

    //struct

    struct Buku {
        string judul;
        string author;
        uint id;
        bool isReady;
    }

    Buku buku1;

    function tambahBuku() public {
        buku1 = Buku("Pemrograman Blockchain", "Pares", 1, true);
    }

    function lihatBuku() public view returns (string memory, string memory, uint, bool){
        return (buku1.judul, buku1.author, buku1.id, buku1.isReady);
    }

    Buku buku2 = Buku("Membuat Daaps", "Yosi", 78, false);

    function lihatBukuDua() public view returns(string memory, string memory){
        return(buku2.judul, buku2.author);
    }

    Buku[] public buku3;

    function newBook(string memory judul, string memory author, uint id, bool isReady) public{
        buku3.push(Buku(judul, author, id, isReady));
    }

    function InfoBuku(uint _index) public view returns (string memory judul, string memory author){
        Buku storage book = buku3[_index];
        return (book.judul, book.author);
    }
}