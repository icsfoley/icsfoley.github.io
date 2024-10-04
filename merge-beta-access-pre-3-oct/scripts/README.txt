`app-ids` was gotten by going to the FF admin page for channels-merge-conversations
and clicking the "copy" button, which put all app ids (all 340) into my
clipboard as a comma-separated list. Then I just did `tr , '\n'`

example usages of scripts:

    cat app-ids | ./x.bash
    cat app-ids | ./x.bash | ./y.bash
    head -n25 app-ids | ./x.bash | ./y.bash
    head -n50 app-ids | ./x.bash | ./y.bash
    ./z.bash
