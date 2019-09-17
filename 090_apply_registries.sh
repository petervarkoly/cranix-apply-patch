#!/bin/bash

MINION=$1

salt "$MINION" state.apply ApplyREGS

