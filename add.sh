#!/usr/bin/env bash

url=$1
name=$2
git submodule add $url bundle/$name
