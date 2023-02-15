#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
int symbol[7],array[7];
int n;
int k = 0;
void FullArray(int index)
{
    int i;
    if (index < 0) {
        for (int i = 0;i < n;i++) {
            printf("%d",array[i]);
        }
        printf("\n");
        return;
    }
    for (i = n - 1;i >= 0; i--) {
        if (symbol[i] == 0) {
            array[k] = i + 1;
            k++;
            symbol[i] = 1;
            FullArray(index - 1);
            symbol[i] = 0;
            k--;
        }
    }
}
int main() {
    scanf("%d",&n);
    FullArray(n - 1);
    system("pause");
    return 0;
}