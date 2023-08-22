#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit
mkdir -p "$GITHUB_WORKSPACE/$GRAPH_OUTPUT_DIR"
go-callvis -file "$GRAPH_OUTPUT" -format png $GRAPH_ARGS
