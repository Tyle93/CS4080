#include <cstdlib>
#include <time.h>
#include <iostream>

int main(){

	srand(time(NULL));
    const int SIZE = 8000;
    int nums[SIZE];
    clock_t time;
	float times[10];
	for (int i = 0; i < 10; i++) {
		time = clock();
		for(int j = 0; j < SIZE; j++)
		{
			nums[j] = rand() % 1000 + 1;
		}
		time = clock() - time;
		times[i] = ((float)time / CLOCKS_PER_SEC);
		std::cout << "Time Elapsed for Stack Test #" << i+1 << ": " << ((float)time / CLOCKS_PER_SEC) << " Seconds" << std::endl;	
	}

	float total = 0;
	for (int i = 0; i < 10; i++) {
		total += times[i];
	}
	float stackAverage = total / 10;
    

	int *moreNums = new int[SIZE];
	for (int i = 0; i < 10; i++) {
		time = clock();
		for (int j = 0; j < SIZE; j++) {
			moreNums[j] = rand() % 1000 + 1;
		}
		time = clock() - time;
		times[i] = ((float)time / CLOCKS_PER_SEC);
		std::cout << "Time Elapsed for Stack Test #" << i+1 << ": " << ((float)time / CLOCKS_PER_SEC) << " Seconds" << std::endl;	
	}
	total = 0;
	for (int i = 0; i < 10; i++) {
		total += times[i];
	}
	float heapAverage = total / 10;
	std::cout << "Average Time Elapsed Using Stack: " << stackAverage << " Seconds" << std::endl;
	std::cout << "Time Elapsed Using Heap: " << heapAverage << " Seconds" << std::endl;

}