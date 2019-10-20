
#include <iostream>
#include <string>
#include <vector>

enum SORT_OPTION { ASCENDING, DESCENDING };

struct Score
{
	std::string name;
	int score;
	Score(std::string n, int s)
	{
		name = n;
		score = s;
	}
	std::string toString()
	{
		std::string ret = "Name: " + name + "\nScore " + std::to_string(score) +  "\n";
		return ret;
	}
};
void sort(std::vector<Score*> &scores, SORT_OPTION primary, SORT_OPTION secondary);
void ascendSort(std::vector<Score*> &scores, SORT_OPTION secondary);
void descendSort(std::vector<Score*> & scores, SORT_OPTION secondary);


int main()
{
	std::vector<Score*> scores;
	scores.push_back(new Score("Dan", 45));
	scores.push_back(new Score("Adam", 39));
	scores.push_back(new Score("Fiona", 42));
	scores.push_back(new Score("Kathy", 44));
	scores.push_back(new Score("Dan", 34));
	scores.push_back(new Score("Adam", 41));
	scores.push_back(new Score("Kalin", 50));
	scores.push_back(new Score("Adam", 40));
	scores.push_back(new Score("Zehr", 43));
	scores.push_back(new Score("Mona", 42));
	scores.push_back(new Score("Kevin", 35));
	scores.push_back(new Score("Elma", 48));

	sort(scores, ASCENDING, ASCENDING);
	std::cout << "\nAscend/Ascend Sort: \n";
	for (int i = 0; i < scores.size(); i++) {
		std::cout << scores[i]->toString();
	}

	sort(scores, ASCENDING, DESCENDING);
	std::cout << "\nAscend/Descend Sort: \n";
	for (int i = 0; i < scores.size(); i++) {
		std::cout << scores[i]->toString();
	}

	sort(scores, DESCENDING, DESCENDING);
	std::cout << "\nDescend/Descend Sort: \n";
	for (int i = 0; i < scores.size(); i++) {
		std::cout << scores[i]->toString();
	}
}


void sort(std::vector<Score*> &scores, SORT_OPTION primary = ASCENDING, SORT_OPTION secondary = ASCENDING)
{
	if (primary == ASCENDING)
	{
		ascendSort(scores, secondary);
	}
	else
	{
		descendSort(scores, secondary);
	}
}

void ascendSort(std::vector<Score*> &scores, SORT_OPTION secondary = ASCENDING)
{
	for(int i = 0; i < scores.size(); i++)
	{
		bool swap = false;
		for (int j = 0; j < scores.size() - 1; j++)
		{
			if (scores[j]->name.compare(scores[j + 1]->name) == 0) {
				if (scores[j]->score > scores[j + 1]->score)
				{
					if (secondary == ASCENDING)
					{
						Score* temp = scores[j];
						scores[j] = scores[j + 1];
						scores[j + 1] = temp;
						swap = true;
					}
				}
				else {
					if (secondary == DESCENDING) {
						Score* temp = scores[j];
						scores[j] = scores[j + 1];
						scores[j + 1] = temp;
						swap = true;
					}
				}
			}
			else if (scores[j]->name.compare(scores[j + 1]->name) == 1) 
			{
				Score* temp = scores[j];
				scores[j] = scores[j + 1];
				scores[j + 1] = temp;
				swap = true;
			}
		}
		if (!swap) 
		{
			break;
		}
	}	
}


void descendSort(std::vector<Score*>& scores, SORT_OPTION secondary = ASCENDING)
{
	for (int i = 0; i < scores.size(); i++)
	{
		bool swap = false;
		for (int j = 0; j < scores.size() - 1; j++)
		{
			if (scores[j]->name.compare(scores[j + 1]->name) == 0) {
				if (scores[j]->score > scores[j + 1]->score)
				{
					if (secondary == ASCENDING)
					{
						Score* temp = scores[j];
						scores[j] = scores[j + 1];
						scores[j + 1] = temp;
						swap = true;
					}
				}
				else {
					if (secondary == DESCENDING) {
						Score* temp = scores[j];
						scores[j] = scores[j + 1];
						scores[j + 1] = temp;
						swap = true;
					}
				}
			}
			else if (scores[j]->name.compare(scores[j + 1]->name) == -1)
			{
				Score* temp = scores[j];
				scores[j] = scores[j + 1];
				scores[j + 1] = temp;
				swap = true;
			}
		}
		if (!swap)
		{
			break;
		}
	}
}



