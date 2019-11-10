#include <string>
#include <iostream>
#include <chrono>
#include "Square.h"
#include "Rectangle.h"

std::chrono::high_resolution_clock::time_point getTime();

int main(){
    Rectangle r(5,5);
    Square s(5);

    std::chrono::high_resolution_clock::time_point begin;
    std::chrono::high_resolution_clock::time_point end;
    std::chrono::duration<double, std::milli> elapsed;
    begin = getTime();
    for(int i = 0; i < 1000; i++){
        r.area();
    }
    end = getTime();
    elapsed = end - begin;
    std::cout << "Time for Static binding: " << elapsed.count() << std::endl;

    begin = getTime();
    for(int i = 0; i < 1000; i++){
        s.areaDynamic();
    }
    end = getTime();
    elapsed = end - begin;
    std::cout << "Time for Dynamic binding: " << elapsed.count() << std::endl;
    
}

std::chrono::high_resolution_clock::time_point getTime(){
    //return std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
    return std::chrono::high_resolution_clock().now();
}