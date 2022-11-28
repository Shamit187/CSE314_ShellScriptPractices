#!/bin/bash

mkdir a
cd a
mkdir b
cd b
touch e.cpp f.cpp g.cpp
rm e.c f.c g.c
cd ..
mkdir d
cd d
touch h.cpp
rm h.c
cd ..
touch i.cpp j.cpp
rm i.c j.c
