# systemd demo

- demo.sh: סקריפט פשוט שרץ בלולאה וכותב ל־log כל 30 שניות.
- devops-demo.service: קובץ שירות systemd שמריץ את הסקריפט.
- כדי להפעיל:
  sudo systemctl daemon-reload
  sudo systemctl start devops-demo
  sudo systemctl status devops-demo
- כדי לראות לוגים: journalctl -u devops-demo -f

