
#include <iostream>
#include <string>
#include <vector>

enum SORT_OPTION {ASCENDING,DESCENDING};

struct Score 
{
	std::string name;
	int score;
	Score(std::string name, int score) 
	{
		this.name = name;
		this.score = score;
	}
	std::string toString()
	{
		std::string ret = "Name: " + this.name + "\nScore " + std::string.to_string(this.score) << std::endl;
	}
};
void sort(std::vector<Score*> &scores, SORT_OPTION primary = ASCENDING, SORT_OPTION secondary = DESCENDING);


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
	//sort(scores, SORT_OPTION::ASCENDING, SORT_OPTION::DESCENDING);
	//sort(scores, SORT_OPTION::DESCENDING, SORT_OPTION::DESCENDING);
	for (int i = 0; i < scores.size(); i++) {
		std::cout << scores[i]->toString();
	}


}


void sort(std::vector<Score*> &scores, SORT_OPTION primary = ASCENDING, SORT_OPTION secondary = DESCENDING) 
{
	if (primary == ASCENDING) 
	{
		ascendSort(scores,secondary);
	}
	else 
	{
		descendSort(scores, secondary);
	}
}

void ascendSort(std::vector<Score*> &scores, SORT_OPTION secondary = ASCENDING) 
{
	if (secondary == ASCENDING) 
	{
		for (int i = 0; i < scores->size(); i++)
		{
			if (scores[i]->name.compare(scores[i+1]->name) == 0) {
				if (scores[i]->score > scores[i + 1]->score)
				{
					Score *temp = scores[i];
					scores[i] = scores[i + 1];
					scores[i + 1] = temp;
				}
			}
			else if(scores[i]->name.compare(scores[i + 1]->name) == 1){
				Score* temp = scores[i];
				scores[i] = scores[i + 1];
				scores[i + 1] = temp;
			}
		}
	}
	else 
	{

	}
}

void descendSort(std::vector<Score*> &scores,SORT_OPTION secondary = DESCENDING)
{

}



