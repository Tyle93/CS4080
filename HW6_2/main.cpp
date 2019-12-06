#include <string>
#include <iostream>
#include <chrono>
#include "Square.cpp"
#include "Rectangle.cpp"

std::chrono::high_resolution_clock::time_point getTime();

int main(int argc, char* argv[]){
    Rectangle* s =  new Square(5);
    std::string count = argv[1];
    const long ITERATIONS =  std::stol(count);
    std::chrono::high_resolution_clock::time_point begin;
    std::chrono::high_resolution_clock::time_point end;
    std::chrono::duration<double, std::milli> elapsed;
    begin = getTime();
    for(long i = 0; i < ITERATIONS; i++){
        s->area();
    }
    end = getTime();
    elapsed = end - begin;
    std::cout << "Time for Static binding with " << ITERATIONS << " iterations: " << elapsed.count()/1000 << " S" <<  std::endl;

    begin = getTime();
    for(long i = 0; i < ITERATIONS; i++){
        s->areaDynamic();
    }
    end = getTime();
    elapsed = end - begin;
    std::cout << "Time for Dynamic binding with " << ITERATIONS << " iterations: " << elapsed.count()/1000  << " S" << std::endl;  
}
std::chrono::high_resolution_clock::time_point getTime(){
        return std::chrono::high_resolution_clock().now();
}