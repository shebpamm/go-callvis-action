#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit
go-callvis -file "$GRAPH_OUTPUT" -format png $GRAPH_ARGS
