#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
char array[100];
int num[100];
int main() {
    int n;
    char c;
    scanf("%d",&n);
    for (int i = 0;i <n;i ++) {
        scanf("%c",&c);
        for (int j = 0;j < 100 ;j++) {
            if (array[j] == c){
                num[j]++;
                break;
            }
            else {
                if (array[j] == '\0') {
                    array[j] = c;
                    num[j]++;
                    break;
                }
            }
        }
        
    }
    for (int i = 0;i < n;i++) {
        if (array[i]!='\0'&&num[i] != 0) {
            printf("%c %d\n",array[i],num[i]);
        }
    }
    system("pause");
    return 0;
}