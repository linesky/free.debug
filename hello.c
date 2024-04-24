#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void colors(){
    printf("\x1b[43;37m");
}

void debugs(char *c){
    printf("debug: %s\n",c);

}
void stops(){
    char ccc[1080];
    printf("------------------\npress a key to continue");
    fgets(ccc,1078,stdin);
}

int main(){
    int i=0;
    char s[1080];
    for(i=0;i<10;i++){
        sprintf(s,"%d",i);
        colors();
        debugs(s);
        
        stops();
    }
    return 0;

}
