#!/usr/bin/env bash

function codepipeline () {
    # brew install jq
    if [ $1  = 'status' ]
    then
        if [ $2 ]
        then
            aws codepipeline get-pipeline-state --name=$2 | jq '.stageStates[] | .actionStates[0].actionName + " - " + .actionStates[0].latestExecution.status'
        else
            string=$(aws codepipeline list-pipelines | jq '.pipelines[].name')
            eval "arr=($string)"
            select PIPELINE in $arr;
            do
                aws codepipeline get-pipeline-state --name=$PIPELINE | jq '.stageStates[] | .actionStates[0].actionName + " - " + .actionStates[0].latestExecution.status'
            return 0
            done
        fi
    fi
}
