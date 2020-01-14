#!/bin/bash

MINION=$1

salt "$MINION" saltutil.sync_modules
salt "$MINION" state.apply ApplyREGS

