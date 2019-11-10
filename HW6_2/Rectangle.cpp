#include "Rectangle.h"

Rectangle::Rectangle(int width, int height)
{
    this->width = width;
    this->height = height;
}

Rectangle::~Rectangle()
{

}

int Rectangle::area()
{
    return width*height;
}

int Rectangle::areaDynamic(){
    return width*height;
}