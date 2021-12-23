# 1 "sorting.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sorting.c"
# 1 "sorting.h" 1



void SortingInsertion(int n, int array[]);
# 2 "sorting.c" 2

void SortingInsertion(int n, int array[]) {

    int key, j;

    for (int i = 1; i < n; i++)
    {
        key = array[i];
        j = i - 1;
        while(j >= 0 && array[j] > key )
        {
            array[j+1] = array[j];
            j = j - 1;
        }
        array[j+1] = key;
    }
}
