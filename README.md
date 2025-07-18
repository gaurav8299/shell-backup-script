# 🗂️ Daily Backup Script (Shell + Git Bash on Windows)



This project contains a simple Bash script to automate \*\*daily backups\*\* of any folder on your Windows system using \*\*Git Bash\*\*. It compresses the folder as a `.tar.gz` file with a timestamp and logs the backup status.



---



## 🔧 Features



- 📦 Compresses and stores backups with date \& time
- 📝 Logs success/failure in a `backup.log` file
- 🐧 Runs in Git Bash (Windows-friendly Linux environment)
- 🕐 Can be automated via Task Scheduler or cron

---

## 📁 Folder Structure

shell-backup-script/

├── backup.sh # Shell script to create compressed backups

└── README.md # Project documentation

---

## 🖥️ Setup Instructions

### 1. ✅ Requirements

- Git Bash installed (https://git-scm.com/download/win)
- Create these folders:
&nbsp; - `C:\\Users\\Lenovo\\Documents\\important` — folder to be backed up

&nbsp; - `C:\\Users\\Lenovo\\backups` — folder to store backups

### 2. 📜 Modify `backup.sh` if needed

Update these lines in `backup.sh` with your desired paths:

```bash

SOURCE\_DIR="/c/Users/Lenovo/Documents/important"

BACKUP\_DIR="/c/Users/Lenovo/backups"

🔐 Make script executable

In Git Bash:

bash

Copy

Edit

chmod +x backup.sh

4\. ▶️ Run the script

bash

Copy

Edit

./backup.sh

You should see a .tar.gz file created in /c/Users/Lenovo/backups/.



🧾 Sample Log Output

text

Copy

Edit

\[Sat Jul 18 22:15:00 IST 2025] Backup successful: backup\_2025-07-18\_22-15-00.tar.gz

🧠 Notes

If you see tar: Removing leading '/' from member names, it's normal and safe to ignore.
You can automate the script using Windows Task Scheduler by calling Git Bash and this script.
📌 Future Improvements (Optional Ideas)

Email notifications for backup status

Add cleanup of old backups (e.g., delete files older than 7 days)

Support multiple folder backups

🙌 Author

Gaurav Rajput

GitHub: @gaurav8299

Email: gauravrajput3005@gmail.com
