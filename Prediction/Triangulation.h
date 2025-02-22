// Zavolokin Ilya, 211
// Pozaimstvovano y Rinroli

#pragma once

#include <vector>
#include <iostream>
#include <set>

#include "Field.h"
#include "Point.h"
#include "Triangle.h"

#include "my_functions.h"

class Field;
class Point;
class Triangle;

using namespace std;

#if !defined(TRIANGULATION)
#define TRIANGULATION

class Triangulation
{
private:
    vector<Triangle> triangles;
    int nu_triangles = 0;
    Field* p_field;
    bool checkDelaunayCondition(Triangle& cur_tri, int ind_poi);
public:
    Triangle* operator[](int i);
    int findTriangle(vector<double> new_point);
    Triangulation(Field* p_fieldd) : p_field(p_fieldd) {};
    Triangulation(Triangulation* tr_to_copy);
    void addTriangle(Triangle triangle);
    // Triangulation* withoutPoint(int id_point);
    // vector<int> sortPolygon(set<int> polygon, int id_poi);
    set<int> deleteTriangles(int ind_poi);
    void deleteEnclosingTriangle();
    int size();
    void printTriangle(int ind_tri, ofstream& stream_tri,
        ofstream& stream_circ, bool all_circ = false);
    void printLastCircle(ofstream& stream_circle);
};

#endif // TRIANGULATION