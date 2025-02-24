#!/bin/bash

# Sync notes and attachments
rsync -av --delete "/home/cristian/Documents/obsidian/Notes/Notion/Terzo Anno/Progettazione di Algoritmi/" /home/cristian/Documents/pa/notes/
rsync -av --delete "/home/cristian/Documents/obsidian/Notes/Attachments/Notion/Terzo Anno/Progettazione di Algoritmi/" /home/cristian/Documents/pa/attachments/

# Commit and push changes
git add .
git commit -m "Updated notes and attachments"
git push origin main
