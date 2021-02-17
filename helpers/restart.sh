#!/bin/bash

random_design="$(ls designs/*.html | shuf -n 1)"
random_design="${random_design%.html}"

echo $random_design

ln -s ../"$random_design".html "./temp/expected.html"
ln -s ../"$random_design".css "./temp/expected.css"

cp './src/begin.html' './temp/actual.html'
cp './src/begin.css' './temp/actual.css'
