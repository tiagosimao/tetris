#include <stdlib.h>
#include <stdio.h>
#include <GLFW/glfw3.h>
#include "render.h"
#include "logic.h"

int Imap[4][4][2]={{{0,2},{1,2},{2,2},{3,2}},
				   {{2,0},{2,1},{2,2},{2,3}},
				   {{0,1},{1,1},{2,1},{3,1}},
				   {{2,0},{2,1},{2,2},{2,3}}};
				   
int Jmap[4][4][2]={{{0,2},{0,1},{1,1},{2,1}},
				   {{1,0},{1,1},{1,2},{2,2}},
				   {{0,1},{1,1},{2,1},{2,0}},
				   {{0,0},{1,0},{1,1},{1,2}}};
				   
int Lmap[4][4][2]={{{0,1},{1,1},{2,1},{2,2}},
				   {{1,2},{1,1},{1,0},{2,0}},
				   {{0,0},{0,1},{1,1},{2,1}},
				   {{0,2},{1,2},{1,1},{1,0}}};
				   
int Omap[4][4][2]={{{1,1},{2,1},{2,2},{1,2}},
				   {{1,1},{2,1},{2,2},{1,2}},
				   {{1,1},{2,1},{2,2},{1,2}},
				   {{1,1},{2,1},{2,2},{1,2}}};
				   
int Smap[4][4][2]={{{0,1},{1,1},{1,2},{2,2}},
				   {{1,2},{1,1},{2,1},{2,0}},
				   {{0,0},{1,0},{1,1},{2,1}},
				   {{0,2},{0,1},{1,1},{1,0}}};

int Tmap[4][4][2]={{{0,1},{1,1},{1,2},{2,1}},
				   {{1,0},{1,1},{2,1},{1,2}},
				   {{0,1},{1,1},{1,0},{2,1}},
				   {{1,0},{1,1},{0,1},{1,2}}};
								   				   
int Zmap[4][4][2]={{{0,2},{1,2},{1,1},{2,1}},
				   {{1,0},{1,1},{2,1},{2,2}},
				   {{0,1},{1,1},{1,0},{2,0}},
				   {{0,0},{0,1},{1,1},{1,2}}};


static GAME game;
static int FIELD_WIDTH = 10;
static int FIELD_HEIGHT = 22;
static double NOW = 0;

static GLFWwindow* window;
static double lastLogicRan = 0;

static void error_callback(int error, const char* description) {
    fputs(description, stderr);
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, GL_TRUE);
    }
    else if (key == GLFW_KEY_LEFT && (action == GLFW_PRESS || action == GLFW_REPEAT)) {
        left(&game);
    }
    else if (key == GLFW_KEY_RIGHT && (action == GLFW_PRESS || action == GLFW_REPEAT)) {
        right(&game);
    }
    else if (key == GLFW_KEY_DOWN && (action == GLFW_PRESS || action == GLFW_REPEAT)) {
        down(&game);
    }
    else if (key == GLFW_KEY_UP && (action == GLFW_PRESS || action == GLFW_REPEAT)) {
        up(&game);
    }
}

static void initGL() {
	glfwSetErrorCallback(error_callback);

    if (!glfwInit()) {
        exit(EXIT_FAILURE);
    }

    window = glfwCreateWindow(640, 480, "Le Tetris", NULL, NULL);
    if (!window) {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwSetKeyCallback(window, key_callback);
}

static void initModel(){
	int x,y;
	game.speed=1;
	game.width=FIELD_WIDTH;
	game.height=FIELD_HEIGHT;
	game.field = (char*) malloc(sizeof(char)*FIELD_WIDTH*FIELD_HEIGHT);
	for(x=0;x<FIELD_WIDTH;++x){
		for(y=0;y<FIELD_HEIGHT;++y){
			game.field[FIELD_HEIGHT*x+y]='\0';
		}
	}
	game.piece='\0';
	game.x=0;
	game.y=0;
	game.rot=0;
	game.state=0;
	game.score=0;
	game.totalScore=0;
	game.level=1;
}

static void init(){
	initGL();
	initModel();
	initLogic(&game);
}

static void shutdown(){
	glfwDestroyWindow(window);
    glfwTerminate();
    free(game.field);
    exit(EXIT_SUCCESS);
}


static void logicLoop() {
	if(NOW-lastLogicRan>1.f/game.speed){
		drop(&game);
		lastLogicRan=NOW;
	}
}

static void renderLoop() {
	float ratio;
	int width, height;

	glfwGetFramebufferSize(window, &width, &height);
	ratio = width / (float) height;

	glViewport(0, 0, width, height);
	glClear(GL_COLOR_BUFFER_BIT);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glOrtho(-ratio, ratio, -1.f, 1.f, 1.f, -1.f);
	glMatrixMode(GL_MODELVIEW);

	draw(game);

	glfwSwapBuffers(window);
	glfwPollEvents();
}

int main(void) {
	
	init();
	
    while (!glfwWindowShouldClose(window)) {
    	NOW=glfwGetTime();
    	logicLoop();
    	renderLoop();
    }
    
    shutdown();

}

