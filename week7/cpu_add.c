#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>
#define SIZE 5




int main(void) {
    struct timeval tv;
    double start_time, end_time;

    gettimeofday(&tv, NULL);
    start_time = (tv.tv_sec) * 1000 + (tv.tv_usec) / 1000;
    int A[SIZE][SIZE] = {{1, 2, 3, 4, 5}, 
                         {1, 2, 3, 4, 5},
                         {1, 2, 3, 4, 5}, 
                         {1, 2, 3, 4, 5}, 
                         {1, 2, 3, 4, 5}};
    int B[SIZE][SIZE] = {{10, 20, 30, 40, 50}, 
                         {10, 20, 30, 40, 50}, 
                         {10, 20, 30, 40, 50}, 
                         {10, 20, 30, 40, 50}, 
                         {10, 20, 30, 40, 50}};
    int C[SIZE][SIZE] = { 0, };

    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            C[i][j] = A[i][j] + B[i][j];
        }
    }

    end_time = (tv.tv_sec) * 1000 + (tv.tv_usec) / 1000;
    printf("excution time : %f\n", (float)(end_time - start_time)/1000);
    return 0;
}