#!/bin/bash
if [[ $TRAVIS_BRANCH == 'master' && ! $TRAVIS_PULL_REQUEST ]]; then
  python3 manage.py test 
else
  python3 manage.py test quiz
fi