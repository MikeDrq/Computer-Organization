#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
long long f[12][12];
long long g[12][12];
int main() {
    int m1,n1,m2,n2;
    scanf("%d%d%d%d",&m1,&n1,&m2,&n2);
    for (int i = 0;i < m1;i++) {
        for (int j = 0;j < n1;j++) {
            scanf("%lld",&f[i][j]);
        }
    } 
    for (int i = 0;i < m2;i++) {
        for (int j = 0;j < n2;j++) {
            scanf("%lld",&g[i][j]);
        }
    }
    long long sum = 0;
    for (int i = 0;i <= m1 - m2;i++) {
        for (int j = 0;j <= n1 - n2;j++) {
            for (int k = 0;k < m2;k++) {
                for (int l = 0;l < n2;l++) {
                    sum = sum + f[i+k][j+l]*g[k][l];
                }
            }
            printf("%lld",sum);
            sum = 0;
            if (j == n1 - n2) {
                printf("\n");
            }
            else {
                printf(" ");
            }
        }
    }
    system("pause");
    return 0;
}