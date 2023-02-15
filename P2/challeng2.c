#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
#define N 1000
int a[N],b[N],c[2*N];    //注意答案的长度大于x,y的长度之和
char* mul(char x[],char y[])
{
    for(int i=strlen(x)-1,j=0;i>=0;i--) a[j++]=x[i]-'0';
    for(int i=strlen(y)-1,j=0;i>=0;i--) b[j++]=y[i]-'0';
    
    int l=strlen(x)+strlen(y)+5;
    for(int i=0;i<strlen(x);i++)
        for(int j=0;j<strlen(y);j++)
            c[i+j]+=a[i]*b[j];      //10^(i+j)=10^i*10^j
    for(int i=0;i<l;i++){
        c[i+1]+=c[i]/10;            //进位
        c[i]%=10;                   //保留
    }
    
    int f=0; 
    char *z = NULL;
    for(int i=l;i>=0;i--){
        if(c[i]) f=1;
        if(f) z+=c[i]+'0';
    }
    if(!f) z+='0';
    
    return z;
}
char *change(int n) {
    int m,cnt = 0,w = 1;
    m = n;
    char *s = NULL;
    m = n;
    w = w/10;
    while (m != 0) {
        s[cnt++] = m/w + '0';
        m = m % w;
        w = w / 10; 
    }
    return s;
}
int main() {
    int n;
    char *s = NULL;
    char *t = NULL;
    scanf("%d",&n);
    s = change(n);
    t = change(n-1);
    puts(mul(s,t)); 
    system("pause");
    return 0;
}
