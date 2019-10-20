#include <iostream>

void swap(int& x, int& y) {
	int t = x;
	x = y;
	y = t;
	return;
}


int main() {
	int  a = 10, b = 20;
	swap(a, b);
	//print a and b
	std::cout << a << "\t" << b << std::endl;
}