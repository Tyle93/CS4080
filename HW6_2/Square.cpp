#include "Square.h"
#include <iostream>

Square::Square(int wh) : Rectangle(wh,wh){}

int Square::areaDynamic(){
        return width*height;
}

