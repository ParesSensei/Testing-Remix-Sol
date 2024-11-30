// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Ballot{
    
    struct Pemilih{
        uint weight; // weight is accumulated by delegation
        bool voted;  //if true, orang ini pernah memenilih sebelumnya
        address delegate; //person delegate to
        uint vote;   //memilih salah satu index perseta pemilu misal 0 atau 1 (jika 2 peseta saja)
    }

    struct Proposal {
        string name;    // nama proposal
        uint voteCount; // akumulasi jumlah voting
    }

    address public ketuaPemilu;

    mapping(address => Pemilih) public voters;

    Proposal[] public proposals;

    constructor(string[] memory namaProposal ){
        ketuaPemilu = msg.sender;
        voters[ketuaPemilu].weight = 1;

        for (uint i = 0; i< namaProposal.length; i++){
            proposals.push(Proposal({
                name: namaProposal[i],
                voteCount: 0
            }));
        }
    }

    function addressYangIkutVote(address voter) public {
        require(
            msg.sender == ketuaPemilu,
            "Hanya ketua pemilu yang dapat memberikan akses siapa yang dapat memilih."
        );
        require(
            !voters[voter].voted,
            "Pemilih ini sudah ikut vote sebelumnya."
        );
        require(
            voters[voter].weight ==0
        );
        voters[voter].weight = 1;
    }

    function vote(uint proposal) public {
        Pemilih storage sender = voters[msg.sender];
        require(sender.weight != 0, "Tidak memiliki hak untuk memilih");
        require(!sender.voted, "Sudah memilih");
        sender.voted = true;
        sender.vote  = proposal;

        proposals[proposal].voteCount += sender.weight;
    }

    function pemenangProposal() public view returns (uint winningProposal_) {
        uint winningVoteCount =0;
        for (uint p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winningVoteCount){
                winningVoteCount = proposals[p].voteCount;
                winningProposal_ = p;
            }
        }
    }

    function pemenangVoting() public view returns (string memory winnerName_){
        winnerName_ = proposals[pemenangProposal()].name;
    }
}