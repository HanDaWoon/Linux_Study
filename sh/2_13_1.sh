#!/bin/bash

pwd
echo ""old=`pwd`""
old=`pwd`
echo ""cd /""
cd /
echo ""cd $old""
cd $old
pwd
list=`ls`
echo $list
