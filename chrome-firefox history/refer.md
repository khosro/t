
https://support.google.com/chrome/answer/10248834?hl=en

https://www.reddit.com/r/chrome/comments/lqh0mg/is_there_a_way_to_export_chrome_history/

The history is saved in a file called History in %LocalAppData%\Google\Chrome\User Data\Default (Windows), ~/Library/Application Support/Google/Chrome/Default (macOS) or ~/.config/google-chrome/Default (Linux). That file is an SQLite3 database which can be read with any compatible client, so it shouldn't be too hard to export the data you want.



If your chrome profile is synced with your Google account then all your web history from all your devices will be available to see at https://history.google.com. Im not sure if it records every page you visit, but it’ll have most stuff, especially if you use Google Search as your search engine.



_____________________



https://stackoverflow.com/questions/64303054/export-download-history-from-chrome
As @joy-jin mentioned in his comment, you can extract it from Chrome's history database.

Locate the History file:
on macOS: ~/Library/Application\ Support/Google/Chrome/Default/
on Windows: %LocalAppData%\Google\Chrome\User Data\Default
on Linux: ~/.config/google-chrome/Default
Make a copy of the file History to another location (you can't use the original while Chrome is open).
Now, you can extract the download links from the copied file, either using sqlite3 CLI, or using a GUI SQLite viewer such as DB Browser for SQLite. The download links are in the table downloads_url_chains.


https://www.sqlite.org/

https://sqlitebrowser.org/

____________________

https://www.google.com/search?client=firefox-b-d&q=why+chrome+does+not+keep+all+history+in+local+chrome


https://www.reddit.com/r/chrome/comments/s0o4ln/does_chrome_only_record_history_for_90_days_why/


I believe it stores locally for 90 days (items >90 days are locally deleted automatically, which regulates the file size of the History file), those which appear in the browser's chrome://history/ for >90 days are not from your local History file but from your Google Account's sync.
If you want to store your sync physically then you need to go to export it from your Google Account - https://takeout.google.com/ (despite its name, it does not 'sync' with your local History file which for the reason above makes the local file a bit useless if it auto-wipes).

_____________________


where is chrome history stored
https://www.google.com/search?q=where+is+chrome+history+stored&oq=where+is+chrome+hiso


https://gist.github.com/dropmeaword/9372cbeb29e8390521c2

https://www.reddit.com/r/chrome/comments/vwehws/where_is_browser_history_cache_locally_stored_on/?rdt=51588

chrome://version/


_____________________






