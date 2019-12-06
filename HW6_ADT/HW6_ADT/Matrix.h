#pragma once

#include <vector>
template <typename T>
class Matrix
{
private:
	int rows;
	int columns;
	T **mat = nullptr;

	template<size_t x, size_t y>
	void copy(T (&z)[x][y]) {
		if(rows == x && columns == y){
			for (int i = 0; i < rows; i++) {
				for (int j = 0; j < columns; j++) {
					mat[i][j] = z[i][j];
				}
			}
		}	
	}
	void fill() {
		mat = new T * [rows];
		for (int i = 0; i < rows; i++) {
			mat[i] = new T[columns];
		}
	}
public:
	template<size_t x, size_t y>
	Matrix(T (&arr)[x][y]) {
		this->rows = x;
		this->columns = y;
		fill();
		copy(arr);
	}
	Matrix(){
		
	}

	~Matrix() {
		if(mat != nullptr){
			for(int i = 0; i < rows; i++){
				delete[] mat[i];
			}
			delete[] mat;
		}	
	}
	void getMax() {
		int indexX = 0;
		int indexY = 0;
		T max = mat[0][0];
		for (int i = 0; i < rows; i++) {
			for (int j = 0; j < columns; j++) {
				if (max < mat[i][j]) {
					max = mat[i][j];
					indexX = i;
					indexY = j;
				}
			}
		}
		std::cout << "Largest Element: " << max << " at index (" << indexX << ", " << indexY << ")" << std::endl;
	}
	T* operator [](int index) {
		return mat[index];
	}
	template <size_t x, size_t y>
	void operator = (T(&arr)[x][y]) {
		rows = x;
		columns = y;
		fill();
		copy(arr);
	}
};

