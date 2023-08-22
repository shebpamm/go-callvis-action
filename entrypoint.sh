#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit
mkdir -p "$(dirname "$GRAPH_OUTPUT")"

GRAPH_OUTPUT=$(echo "$GRAPH_OUTPUT" | sed 's/\.[^.]*$//') # Remove extension from the file name

go-callvis -file "$GRAPH_OUTPUT" -format png $GRAPH_ARGS
