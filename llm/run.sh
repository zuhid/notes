#! /bin/bash

# https://www.w3schools.com/python/python_ml_polynomial_regression.asp

while inotifywait --quiet --event close_write *.py; do
    clear
    python3 main.py
done