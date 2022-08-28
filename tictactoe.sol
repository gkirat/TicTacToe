// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract tictactoe{

    uint[9]  tic;
    uint   x =1;
    uint   o=2;

    struct Matchdetails{
        address player1add;
        address player2add;
        address winner;
    }

    mapping (uint=>Matchdetails)public Details;

    function Player1(uint inp)public {
        uint numberof1s;
        for(uint i=0;i<=8;i++){
            if(tic[i]==1){
                numberof1s++;
            }
        }
        uint numberof2s;
        for(uint i=0;i<=8;i++){
            if(tic[i]==2){
                numberof2s++;
            }
        }
        require(numberof2s==numberof1s,"It's Player 2 turn");
        require(Details[0].winner==address(0),"Winner has been declared");
        require(msg.sender!=Details[0].player2add,"you are PLAYER 2");
        require(tic[inp]==0,"No player can declare one input over the other");
        require(inp<=8,"Please enter valid input");

        Details[0].player1add=msg.sender;
        tic[inp]=1;
        if(numberof1s >=3){
            if(tic[0]==tic[1] && tic[1]==tic[2] || tic[0]==tic[3] && tic[3]==tic[6] || tic[6]==tic[7] && tic[7]==tic[8] ||tic[0]==tic[1] && tic[1]==tic[2] || tic[1]==tic[4] && tic[4]==tic[7] || tic[2]==tic[5] && tic[5]==tic[8]  ||tic[0]==tic[4] && tic[4]==tic[8] || tic[2]==tic[4] && tic[4]==tic[6]  ){
            Details[0].winner=Details[0].player1add;
            }
        } 
    }


    function Player2(uint inp)public {
        
        // Details[0].player2add=msg.sender;
        // require(msg.sender==Details[0].player2add,"No one can play instead of you");
         uint numberof2s;
        for(uint i=0;i<=8;i++){
            if(tic[i]==2){
                numberof2s++;
            }
        }
        uint numberof1s;
        for(uint i=0;i<=8;i++){
            if(tic[i]==1){
                numberof1s++;
            }
        }

        require(numberof2s==numberof1s-1,"It's Player 1 turn");
        require(Details[0].winner==address(0),"Winner has been declared");
        require(msg.sender!=Details[0].player1add,"you are PLAYER 1");
        require(tic[inp]==0,"No player can declare one input over the other");
        require(inp<=8,"Please enter valid input");

        
        tic[inp]=2;
        if(numberof2s >=3){
            if(tic[0]==tic[1] && tic[1]==tic[2] || tic[0]==tic[3] && tic[3]==tic[6] || tic[6]==tic[7] && tic[7]==tic[8] ||tic[0]==tic[1] && tic[1]==tic[2] || tic[1]==tic[4] && tic[4]==tic[7] || tic[2]==tic[5] && tic[5]==tic[8]  ||tic[0]==tic[4] && tic[4]==tic[8] || tic[2]==tic[4] && tic[4]==tic[6]  ){
            Details[0].winner=Details[0].player2add;
            }
        }    
    }


    function showempty()public view returns(uint[9] memory){
        return tic;
    }
}


 
