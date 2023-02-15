#include<stdio.h>
#include<stdlib.h>
char s[21];
int main(){
    int n;
    scanf("%d",&n);
    for (int i = 0;i < n;i ++) {
        scanf("\n%c",&s[i]);
    }
    int i = 0;
    int j = n-1;
    int flag = 0;
    while (i <= j) {
        if (s[i] == s[j]) {
            i++;
            j--;
        }
        else {
            flag = 1;
            printf("0");
            break;
        }
    }
    if (flag == 0) {
        printf("1");
    }
    system("pause");
    return 0;
}
