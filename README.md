# Amplivum-tools

This repository is a collection of tools and scripts developed by [Amplivum](https://amplivum.com).

---

## License

This project is licensed under the [MIT License](https://opensource.org/license/MIT). See the LICENSE.txt file for details.

---

## File-backup

This script copies a source file, appends today's date to the filename, and pastes it into a destination folder. 
It is designed to be used manually or automated with Windows Task Scheduler to simplify file backups.

---

### How to Use (Manual)

1. Download the script to your desired location.
2. Right-click on `file-backup.bat` and open it in a text editor (e.g., Notepad, Notepad++, etc.).
3. Replace `placeholder1` with the source file path.
4. Replace `placeholder2` with the destination folder path where you want the file to be copied.
5. Save the file and double-click it to run the script.

---

### How to Use (Automatic with Task Scheduler)

1. Complete Steps 1–5 in the manual instructions above.
2. Open **Task Scheduler** on Windows (search for it in the Start menu).
3. Click on **Task Scheduler Library** in the left pane.
4. In the right pane, under **Actions**, click **Create Task...**.
5. Under the **General** tab:
   - Set a memorable name for the task (e.g., "Daily File Backup").
6. Under the **Triggers** tab:
   - Click **New...**, ensure "Begin the Task" is set to **On a schedule**.
   - Select **Daily** and set the time you want the task to run. Click **OK**.
7. Under the **Actions** tab:
   - Click **New...**, ensure "Action" is set to **Start a program**.
   - Browse to the location of `file-backup.bat`, select it, and click **Open**. Click **OK**.
8. Under the **Settings** tab:
   - Enable the option **Run task as soon as possible after a scheduled start is missed**.
     - *(This ensures the task runs if your computer is off at the scheduled time.)*

---