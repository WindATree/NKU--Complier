#include<stdio.h>

int length = 10;
int sum = 0;

void TackleArray(int a[]) {

    for (int i = 0; i < length; i++) {
        sum += a[i];
    }
    double average = (double)sum / length;  
    printf("The sum and averagr of array is :%d, %f\n", sum, average);
}

int main() {
    int a[10];
    printf("please input array element \n");
    for (int i = 0; i < length; i++) {
        scanf("%d", &a[i]); 
    }
    TackleArray(a);
    return 0;
}