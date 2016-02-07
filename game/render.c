#include <stdio.h>
#include <GLFW/glfw3.h>
#include "game.h"

static float hs = 0.45; //square's half size
static float scale = 0.08f;

void drawSquare(float r, float g, float b, int x, int y){
	glBegin(GL_POLYGON);
	glColor3f(r, g, b);
	glVertex3f(scale*(x-hs),scale*(y-hs), 0.f);
	glVertex3f(scale*(x+hs),scale*(y-hs), 0.f);
	glVertex3f(scale*(x+hs),scale*(y+hs), 0.f);
	glVertex3f(scale*(x-hs),scale*(y+hs), 0.f);
	glEnd();
}

void drawAtom(char piece, int x, int y){
	switch(piece){
		case 'I':
			drawSquare(0.f, 1.f, 1.f, x, y);
			break;
		case 'O':
			drawSquare(1.f, 1.f, 0.f, x, y);
			break;
		case 'T':
			drawSquare(0.5f, 0.f, 1.f, x, y);
			break;
		case 'S':
			drawSquare(0.f, 1.f, 0.f, x, y);
			break;
		case 'Z':
			drawSquare(1.f, 0.f, 0.f, x, y);
			break;
		case 'J':
			drawSquare(0.f, 0.f, 1.f, x, y);
			break;
		case 'L':
			drawSquare(1.f, 0.5f, 0.f, x, y);
			break;
	}
}

void drawColoredPiece(int map[4][4][2], int x, int y,int rot, float r, float g, float b){
	drawSquare(r,g,b,x+map[rot][0][0], y+map[rot][0][1]);
	drawSquare(r,g,b,x+map[rot][1][0], y+map[rot][1][1]);
	drawSquare(r,g,b,x+map[rot][2][0], y+map[rot][2][1]);
	drawSquare(r,g,b,x+map[rot][3][0], y+map[rot][3][1]);
}

void drawPiece(char piece, int x, int y, int rot){
	switch(piece){
		case 'I':
			drawColoredPiece(Imap, x, y, rot, 0.f, 1.f, 1.f);
			break;
			case 'J':
			drawColoredPiece(Jmap, x, y, rot, 0.f, 0.f, 1.f);
			break;
		case 'L':
			drawColoredPiece(Lmap, x, y, rot, 1.f, 0.5f, 0.f);
			break;
		case 'O':
			drawColoredPiece(Omap, x, y, rot, 1.f, 1.f, 0.f);
			break;
		case 'S':
			drawColoredPiece(Smap, x, y, rot, 0.f, 1.f, 0.f);
			break;
		case 'T':
			drawColoredPiece(Tmap, x, y, rot, 0.5f, 0.f, 1.f);
			break;
		case 'Z':
			drawColoredPiece(Zmap, x, y, rot, 1.f, 0.f, 0.f);
			break;


	}
}

void drawFrame(int w, int h, int hs, int vs){
	int x,y;
	float g1=0.15f,g2=0.2f;
	
	// left margin
	for(y=-1;y<h-1;++y){
		drawSquare(g1,g1,g1,-2+hs,y+vs);
		drawSquare(g2,g2,g2,-1+hs,y+vs);
	}
	
	// right margin
	for(y=-1;y<h-1;++y){
		drawSquare(g1,g1,g1,w+1+hs,y+vs);
		drawSquare(g2,g2,g2,w+hs,y+vs);
	}
	
	// top margin
	for(x=0;x<w;++x){
		drawSquare(g1,g1,g1,x+hs,h-1+vs);
		drawSquare(g2,g2,g2,x+hs,h-2+vs);
	}
	
	// bottom margin
	for(x=0;x<w;++x){
		drawSquare(g1,g1,g1,x+hs,-2+vs);
		drawSquare(g2,g2,g2,x+hs,-1+vs);
	}
	
}

void draw(GAME game) {
	int x,y;
	int hs,vs; //horizontal and vertical shift, maps game to gl coordinates
	hs=-game.width/2;
	vs=-game.height/2+1;
	
	glLoadIdentity();
	for(x=0;x<game.width;++x){
		for(y=0;y<game.height;++y){
			drawAtom(game.field[game.height*x+y],x+hs,y+vs);
		}
	}
	if(game.piece!='\0'){
		drawPiece(game.piece,game.x+hs,game.y+vs,game.rot);
	}
	
	drawFrame(game.width,game.height,hs,vs);
}
