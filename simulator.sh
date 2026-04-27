#!/bin/bash

# Clean up previous runs
rm -rf search_dungeon
mkdir -p search_dungeon/room_1/secret_box search_dungeon/room_2 search_dungeon/archive

# Create dummy files and hidden scrolls
touch search_dungeon/room_1/key.txt
echo "The Ancient Secret: COMMAND LINE RULES THE WORLD" > search_dungeon/room_1/.hidden_scroll
echo "PASSCODE: 8899" > search_dungeon/room_1/secret_box/note.txt

# Create logs for Grep practice
echo "Timestamp: 2026-04-27, User: admin, Status: error" > search_dungeon/room_2/logs.txt
echo "Timestamp: 2026-04-27, User: guest, Status: success" >> search_dungeon/room_2/logs.txt
echo "The treasure location is mentioned in the hidden_scroll" > search_dungeon/archive/info.md

clear
echo "=========================================="
echo "   WELCOME TO THE SEARCH ODYSSEY v2.0    "
echo "=========================================="
echo "MISSION: Find the hidden data in 'search_dungeon'"
echo "------------------------------------------"
echo "GOALS:"
echo "1. Use 'tree' to visualize the dungeon map."
echo "2. Use 'ls -la' to find hidden files (starting with .)."
echo "3. Use 'grep' to find the 'error' status in logs.txt."
echo "4. Find the PASSCODE hidden in the deep directories."
echo "------------------------------------------"
echo "COMMAND TO START: cd search_dungeon"
echo "=========================================="

