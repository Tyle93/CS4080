// CS_4080_HW_5.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <string>
#include <vector>

enum SORT_OPTION {ASCENDING,DESCENDING};

struct Score {
	std::string name;
	int score;
	Score(std::string name, int score) {
		this->name = name;
		this->score = score;
	}
};
void sort(std::vector<Score*> scores, SORT_OPTION primary = ASCENDING, SORT_OPTION secondary = DESCENDING);


int main()
{
	std::vector<Score*> scores;
	scores.push_back(new Score("Dan",45));
	scores.push_back(new Score("Adam", 45));
	scores.push_back(new Score("Fiona", 45));
	scores.push_back(new Score("Kathy", 45));
	scores.push_back(new Score("Dan", 45));
	scores.push_back(new Score("Adam", 45));
	scores.push_back(new Score("Kalin", 45));
	scores.push_back(new Score("Adam", 45));
	scores.push_back(new Score("Zehr", 45));
	scores.push_back(new Score("Mona", 45));
	scores.push_back(new Score("Kevin", 45));
	scores.push_back(new Score("Elma", 45));
	
	sort(scores, SORT_OPTION::ASCENDING, SORT_OPTION::ASCENDING);
	sort(scores, SORT_OPTION::ASCENDING, SORT_OPTION::DESCENDING);
	sort(scores, SORT_OPTION::DESCENDING, SORT_OPTION::DESCENDING);


}


void sort(std::vector<Score*> scores, SORT_OPTION primary = ASCENDING, SORT_OPTION secondary = DESCENDING) {

}


// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
