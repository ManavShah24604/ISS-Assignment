#!/bin/bash
awk '!seen[$0]++' quotes.txt
