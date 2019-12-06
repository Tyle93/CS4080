#pragma once

class Rectangle
{
protected:
    int width;
    int height;
public:
    Rectangle(int,int);
    int area();
    virtual int areaDynamic();
};


