#include "stdio.h"
#include "sorting.h"
int main() {
    int array[10] = {2, 4, 4, 1, 2, 3, 4, 9, 8, 10};
    printf("Source array:\n");
    for (int i = 0; i < 10; ++i){
        printf("%d ", array[i]);
    }
    SortingInsertion(10, array);
    printf("\nSorted array:\n");
    for (int i = 0; i < 10; ++i){
        printf("%d ", array[i]);
    }
    return 0;
}
