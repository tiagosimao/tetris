#ifndef GAME_DEFINITION
#define GAME_DEFINITION

typedef struct G {
	float speed;
	int width;
	int height;
	char piece;
	int rot;
	int x;
	int y;
	char * field;
	int state;
	int score;
	int totalScore;
	int level;
} GAME;

#endif

extern int Imap[4][4][2];
extern int Jmap[4][4][2];
extern int Lmap[4][4][2];
extern int Omap[4][4][2];
extern int Smap[4][4][2];
extern int Tmap[4][4][2];
extern int Zmap[4][4][2];
