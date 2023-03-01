#!/usr/bin/env nu

let types = ["fix", "feat", "docs", "style", "refactor", "test", "chore", "revert"]

#gum style --border rounded --padding="0 1" --align=center --bold --foreground="#FFBC91" "Commit Helper"

let type = (gum choose $types)

let summary = (gum input --value $"($type): " --placeholder "Short summary of the changes")

let description = (gum write --placeholder "Details of this change (CTRL+D to finish)")

gum confirm "Commit changes?" ; git commit -m $"($summary)" -m $"($description)"