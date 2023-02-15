#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
int a[100];
int binary_search(int key,int a[],int n) //自定义函数binary_search()
{
    int low,high,mid,count=0,count1=0;
    low=0;
    high=n-1;
    while(low<=high)    //査找范围不为0时执行循环体语句
    {
        count++;    //count记录査找次数
        mid=(low+high)/2;    //求中间位置
        if(key<a[mid])    //key小于中间值时
            high=mid-1;    //确定左子表范围
        else if(key>a[mid])    //key 大于中间值时
            low=mid+1;    //确定右子表范围
        else if(key==a[mid])    //当key等于中间值时，证明查找成功
        {
            printf("1");
            count1++;    //count1记录查找成功次数
            break;
        }
    }
    if(count1==0)    //判断是否查找失敗
        printf("0");
    return 0;
}
int main() {
    int n;
    scanf("%d",&n);
    for (int i = 0;i < n;i ++) {
        scanf("%d",&a[i]);
    }
    int key;
    scanf("%d",&key);
    binary_search(key,a,n);
    system("pause");
    return 0;
}
