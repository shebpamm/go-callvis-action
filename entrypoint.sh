#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit
go-callvis $GRAPH_ARGS
