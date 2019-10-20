#include <set>
#include <algorithm>
#include <iostream>
#include <vector>
int main() {
	std::set<int> s1;
	std::set<int> s2;

	s1.insert(1);
	s1.insert(5);
	s1.insert(3);
	s1.insert(6);
	s1.insert(7);
	s1.insert(8);

	s2.insert(2);
	s2.insert(5);
	s2.insert(6);
	s2.insert(9);
	s2.insert(7);
	
	std::vector<int> output1;
	std::vector<int> output2;

	std::set_intersection(s1.begin(), s1.end(), s2.begin(), s2.end(), std::back_inserter(output1));
	std::cout << "New Intersected Set: [ ";
	for (int i : output1) {
		std::cout << i << " ";
	}
	std::cout << "]" << std::endl;

	std::set_difference(s1.begin(), s1.end(), s2.begin(), s2.end(), std::back_inserter(output2));
	std::cout << "New Differenced Set: [ ";
	for (int i : output2) {
		std::cout << i << " ";
	}
	std::cout << "]" << std::endl;
	
}

