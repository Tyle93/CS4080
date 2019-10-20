#include <iostream>
#include <string>

template <typename T, int x, int y>
T find_max(T (&matrix)[x][y]);

template <typename T, int x, int y>
void printMatrix(T(&matrix)[x][y]);

int main() 
{
	int matrix1[5][5] = { 
		{1,5,22,66,33}
		,{44,66,22,11,0}
		,{345,123,634,12,99}
		,{46,27,33,12,55}
		,{18,37,95,46,64}
	};

	std::string matrix2[5][5] = { 
		{"Carl","Richard","Delaney","Jessica","John"}
		,{"Bryan","Charles","Darlene","Dave","Mia"}
		,{"Milton","Man","Austin","Julio","Julie"}
		,{"Brian","Bradley","Milk","Tyler","Holly"}
		,{"Bob","Dianna","Zach","Eloy","Xavier"}
	};

	std::string smax = find_max(matrix2);
	int imax = find_max(matrix1);

	printMatrix(matrix1);
	printMatrix(matrix2);

	std::cout << "Max value for integer array: " << imax 
		<< "\nMax value for string array: " << smax <<std::endl;
}


template <typename T, int x, int y>
T find_max(T (&matrix)[x][y]) 
{
	T max = matrix[0][0];
	for (int i = 0; i < x; i++)
	{
		for (int j = 0; j < y; j++) 
		{
			if (matrix[i][j] > max) 
			{
				max = matrix[i][j];
			}
		}
	}
	return max;
}

template <typename T, int x, int y>
void printMatrix(T(&matrix)[x][y]) 
{
	std::cout << std::endl;
	for (int i = 0; i < x; i++)
	{
		for (int j = 0; j < y; j++) 
		{
			std::cout << matrix[i][j] << "\t";
		}
		std::cout << std::endl;
	}
	std::cout << std::endl;
}