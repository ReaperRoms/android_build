#!/bin/bash

# To run this, simply cd to the Reaper folder and run:

# . build/weeklychangelog.sh :) *After syncing the repo.*

_now=$(date +"%m-%d-%Y")
_file=changelog/ReaperChangelog/$_now/Reaper-Changelog-$_now.txt

mkdir -p changelog/ReaperChangelog/

mkdir -p changelog/ReaperChangelog/$_now

chmod 777 -R changelog/ReaperChangelog

repo forall -pc git log --oneline --reverse --no-merges --since=7.day.ago >  $_file
