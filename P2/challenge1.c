#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
int a[8][8];
int symbol[8][8];
int cnt;
int m,n,dx,dy;
void search(int x,int y) {
    if (symbol[x][y] == 1) {
        return ;
    } else if (x>=m||x<0||y<0||y>=n) {
        return ;
    }
    else if ( x == dx-1 && y == dy-1){
        cnt++;
        return ;
    } else {
        symbol[x][y] = 1;
        search(x,y+1);
        search(x,y-1);
        search(x+1,y);
        search(x-1,y);
    }
    symbol[x][y] = 0;
}

int main() {
    scanf("%d%d",&m,&n);
    for (int i = 0;i < m; i++) {
        for (int j = 0; j < n;j++) {
            int a;
            scanf("%d",&a);
            if (a == 1) {
                symbol[i][j] = 1;
            }
        }
    }
    int x,y;
    scanf("%d%d",&x,&y);
    scanf("%d%d",&dx,&dy);
    search(x-1,y-1);
    printf("%d",cnt);
    system("pause");
    return 0;
}