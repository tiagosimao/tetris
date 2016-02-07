#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include "game.h"


char get(GAME * game, int x, int y){
	if(x<0||y<0||x>=game->width||y>=game->height){
		return 'X';
	}
	return game->field[x*game->height+y];
}

void set(GAME * game, int x, int y, char what){
	if(x<0||y<0||x>=game->width||y>=game->height){
		return;
	}
	game->field[x*game->height+y]=what;
}

int willPieceCollide(GAME * game,int map[4][4][2],int x, int y, int rot){
	if(get(game,x+map[rot][0][0],y+map[rot][0][1])!='\0'
	|| get(game,x+map[rot][1][0],y+map[rot][1][1])!='\0'
	|| get(game,x+map[rot][2][0],y+map[rot][2][1])!='\0'
	|| get(game,x+map[rot][3][0],y+map[rot][3][1])!='\0') {
				return 1;
	} else {
		return 0;
	}
}

int willCollide(GAME * game,int x, int y, int rot){
	switch(game->piece){
		case 'I':
			return willPieceCollide(game,Imap,x,y,rot);
			break;
		case 'J':
			return willPieceCollide(game,Jmap,x,y,rot);
			break;
		case 'L':
			return willPieceCollide(game,Lmap,x,y,rot);
			break;
		case 'O':
			return willPieceCollide(game,Omap,x,y,rot);
			break;
		case 'S':
			return willPieceCollide(game,Smap,x,y,rot);
			break;
		case 'T':
			return willPieceCollide(game,Tmap,x,y,rot);
			break;
		case 'Z':
			return willPieceCollide(game,Zmap,x,y,rot);
			break;
	}
	return 0;
}

void merge(GAME * game,int map[4][4][2]){
	int x=game->x,y=game->y;
	char p=game->piece;
	set(game,x+map[game->rot][0][0],y+map[game->rot][0][1],p);
	set(game,x+map[game->rot][1][0],y+map[game->rot][1][1],p);
	set(game,x+map[game->rot][2][0],y+map[game->rot][2][1],p);
	set(game,x+map[game->rot][3][0],y+map[game->rot][3][1],p);
}

void mergePiece(GAME * game){
	switch(game->piece){
		case 'I':
			merge(game,Imap);
			break;
		case 'J':
			merge(game,Jmap);
			break;
		case 'L':
			merge(game,Lmap);
			break;
		case 'O':
			merge(game,Omap);
			break;
		case 'S':
			merge(game,Smap);
			break;
		case 'T':
			merge(game,Tmap);
			break;
		case 'Z':
			merge(game,Zmap);
			break;
		default:
			return;
	}
	game->piece='\0';
}

void rotate(GAME * game){
	game->rot=(game->rot+1)%4;
}

void score(GAME * game){
	game->score++;
	game->totalScore++;
	if(game->score>10){
		game->level++;
		game->score=0;
	}
	game->speed=game->level;
	printf("Level: %i\nLines: %i\nTotal Score: %i\n",game->level,game->score,game->totalScore);
}

void removeLine(GAME * game, int at){
	int x,y;
	for(x=0;x<game->width;++x){
		for(y=at;y<game->height-1;++y){
			set(game,x,y,get(game,x,y+1));
		}
	}
	score(game);
}

void doLines(GAME * game){
	int x, y;
	for(y=0;y<game->height;++y){
		for(x=0;x<game->width;++x){
			if('\0'==get(game,x,y)){
				break;
			}
			if(x==(game->width-1)){ // full line
				removeLine(game,y);
				--y; // check this line again
			}
		}
	}
}

void newPiece(GAME * game){
	int r = rand() % 7;
	switch(r){
		case 0:
			game->piece='I';
			break;
		case 1:
			game->piece='J';
			break;
		case 2:
			game->piece='L';
			break;
		case 3:
			game->piece='O';
			break;
		case 4:
			game->piece='S';
			break;
		case 5:
			game->piece='T';
			break;
		case 6:
			game->piece='Z';
			break;
		default:
			game->piece='I';
	}
	game->x=game->width/2-2;
	game->y=game->height-4;
	game->rot=0;
	if(willCollide(game,game->x,game->y,game->rot)){
		game->state=1;
	}
}

void left(GAME * game){
	if(!willCollide(game,game->x-1,game->y,game->rot)){
		game->x--;
	}
}

void right(GAME * game){
	if(!willCollide(game,game->x+1,game->y,game->rot)){
		game->x++;
	}
}

void down(GAME * game){
	if(!willCollide(game,game->x,game->y-1,game->rot)){
		game->y--;
	} else {
		mergePiece(game);
		doLines(game);
	}
}

void up(GAME * game){
	if(!willCollide(game,game->x,game->y,(game->rot+1)%4)){
		rotate(game);
	}
}

void drop(GAME * game){
	if(game->state!=0){
		printf("GAME OVER/n");
		return;
	}
	else if(game->piece=='\0'){
		newPiece(game);
	}
	else if(willCollide(game,game->x,game->y-1,game->rot)){
		mergePiece(game);
		doLines(game);
	} else {
		game->y--;
	}
}

void initLogic(GAME * game){
	srand(time(NULL));
}