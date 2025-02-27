#!/bin/bash

# Sync notes and attachments
rsync -av --delete "/home/cristian/Documents/AllMyNotes/Notes/Notion/Terzo Anno/Progettazione di Algoritmi/" /home/cristian/Documents/pa/notes/
rsync -av --delete "/home/cristian/Documents/AllMyNotes/Attachments/Notes/Notion/Terzo_Anno/Progettazione_di_Algoritmi"

# Commit and push changes
git add .
git commit -m "Updated notes and attachments"
git push origin main
