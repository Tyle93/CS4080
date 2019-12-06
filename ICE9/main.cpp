#include <iostream>
#include <string>
#include <vector>

void checkNum(std::string);

class InvalidRange{};

std::vector<int> nums;
int main(){
    bool exit = false;
    std::string exitCondition = "exit";
    while(!exit){
        try{
            std::cout << "\nEnter an Integer from -100 to 100: ";
            std::string input;
            std::getline(std::cin,input);
            if(input == exitCondition){
                exit = true;
            }else{
                checkNum(input);
            }
        }catch(InvalidRange e){
            std::cerr << "Input outside of valid range!" << std::endl;
        }catch(std::invalid_argument e){
            std::cerr << "Invalid input! Enter only numeric values." << std::endl;
            return 1;
        }
    }
}

void checkNum(std::string s){
    try{
        int num = std::stoi(s);
        if(num > 100 || num < -100){
            throw InvalidRange();
        }
        nums.push_back(num);
    }catch(std::invalid_argument e ){
        throw e;
    }
}
