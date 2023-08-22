#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit
mkdir -p "$GITHUB_WORKSPACE/$GRAPH_OUTPUT_DIR"

GRAPH_OUTPUT=$(echo "$GRAPH_OUTPUT" | sed 's/\.[^.]*$//') # Remove extension from the file name

go-callvis -file "$GRAPH_OUTPUT" -format png $GRAPH_ARGS
rm "$GRAPH_OUTPUT.gv"
