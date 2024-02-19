#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime_api.h>
#include <cuda_runtime.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>

__global__ void add_kernel( int* C, const int* A, const int* B) {
    int i = threadIdx.x;
    int j = threadIdx.y;
    c[i][j] = a[i][j] + b[i][j]
}

int main(void) {
    struct timeval tv;
    double start_time, end_time;

    gettimeofday(&tv, NULL);
    start_time = (tv.tv_sec) * 1000 + (tv.tv_usec) / 1000;
    const int SIZE = 5;
    const int A[SIZE][SIZE] = {{ 1, 2, 3, 4, 5 }, 
                               { 1, 2, 3, 4, 5 }, 
                               { 1, 2, 3, 4, 5 },
                               { 1, 2, 3, 4, 5 },
                               { 1, 2, 3, 4, 5 }};
    const int B[SIZE][SIZE] = {{ 10, 20, 30, 40, 50 },
                               { 10, 20, 30, 40, 50 },
                               { 10, 20, 30, 40, 50 },
                               { 10, 20, 30, 40, 50 },
                               { 10, 20, 30, 40, 50 }};
    int C[SIZE][SIZE] = { 0, };
    int* dev_a = nullptr;
    int* dev_b = nullptr;
    int* dev_c = nullptr;
    cudaMalloc( (void**)&dev_a, S);
    cudaMalloc( ());
    cudaMalloc(());
    cudaMemcpy();
    cudaMemcpy();
    add_kernel<<<1, SIZE>>>();

    


    end_time = (tv.tv_sec) * 1000 + (tv.tv_usec) / 1000;
    printf("GPU execution time : %f (sec)", end_time-start_time);
    fflush(stdin);
    return 0;
}