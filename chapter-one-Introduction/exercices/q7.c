#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int proc(int a[]) {
    int i, sum = 0;
    for (i = 0; i < 100000; i++) {
        sum += a[i];
    }
    return sum;
}

int main() {
    int *a = (int *)malloc(100000 * sizeof(int));
    if (a == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    // Initialize the array with some values
    for (int i = 0; i < 100000; i++) {
        a[i] = i + 1; // Fill with values from 1 to 100000
    }

    clock_t start = clock();
    int result = proc(a);
    clock_t end = clock();

    double time_taken = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Result: %d\n", result);
    printf("Time taken: %f seconds\n", time_taken);

    free(a);
    return 0;
}