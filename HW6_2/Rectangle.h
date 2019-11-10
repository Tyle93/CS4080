#pragma once

class Rectangle
{
protected:
    int width;
    int height;
public:
    Rectangle(int,int);
    ~Rectangle();
    int area();
    virtual int areaDynamic();
    
};


