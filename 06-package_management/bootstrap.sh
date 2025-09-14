#!/bin/bash
# סקריפט התקנה בסיסי מתוך רשימת חבילות

# עדכון רשימת חבילות
echo "=== מרענן רשימת חבילות ==="
sudo apt update -y

# קריאת כל שורה בקובץ והתקנתה
echo "=== מתקין את כל החבילות מ-packages.txt ==="
while read pkg; do
  echo ">>> מתקין $pkg"
  sudo apt install -y "$pkg"
done < packages.txt

echo "=== סיום התקנות ==="

