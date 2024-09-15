#include <stdio.h>
#include <time.h>

// 宏定义，会在下文替换
#define A 0
#define FEATURE_FIBONACCI 1

// 死代码块1--未被调用的函数
void mergeSort() {
    int x = 0;
    return;
}

int main() {
    int n, count;
    int a = A, b = 1, c;
    clock_t start, end;
    double cpu_time_used;

    // 死代码块2--声明了但从未被使用的变量
    int unusedVariable = 42;

    // 死代码块3--不会执行的条件分支
    if (b > 10) {
        printf("b is greater than 10\n");
    }
    printf("请输入斐波那契数列的项数 n: ");
    scanf("%d", &n);
    printf("请输入计算次数 count: ");
    scanf("%d", &count);

    // 条件编译指令，根据宏的值决定是否执行计算
    #if FEATURE_FIBONACCI
        start = clock(); // 记录开始时间
        for (int i = 0; i < count; i++) {
            for (int j = 0; j < n; j++) {
                c = a + b;
                a = b;
                b = c;
            }
        }
        end = clock(); // 记录结束时间
        cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC; // 计算执行时间（秒）
        cpu_time_used *= 1000; // 转换为毫秒
        printf("计算 %d 项斐波那契数列，重复 %d 次的总耗时为: %f 毫秒\n", n, count, cpu_time_used);
    #else
        printf("斐波那契数列计算功能未启用。\n");
    #endif

    return 0;
}