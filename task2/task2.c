extern int getint();
extern void putint(int);
extern void putfloat(float);

// 定义常量
const int SIZE = 7;

// 全局变量
int numbers[7];
int max=0;
int min=1000;
int sum = 0;

// 计算去掉最大值和最小值后的平均值
float calculateAverage(int a[],int size) {
    // 找到最大值和最小值
    for (int i = 0; i < SIZE; i++) {
        if (numbers[i] > max) max = numbers[i];
        if (numbers[i] < min) min = numbers[i];
        sum += numbers[i];
    }
    
    // 计算平均值
    sum -= max + min;
    return sum / (SIZE - 2);
}

int main() {
    float average;
    int i=0;

   while (i < SIZE) {
        numbers[i] = getint(); // 调用SysY库函数getint()
        i = i + 1;
    }

    average = calculateAverage(numbers, 7);

    putint(average);

    return 0;
}