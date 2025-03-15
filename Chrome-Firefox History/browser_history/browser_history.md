# Browser histories

Unless you are using Safari on OSX, most browsers will have some kind of free plugin that you can use to export the browser's history. So that's probably the easiest way. The harder way, which seems to be what Safari wants is a bit more hacky but it will also work for other browsers. Turns out that most of them, including Safari, have their history saved in some kind of [sqlite](https://www.sqlite.org/) database file somewhere in your home directory.

The OSX Finder cheats a little bit and doesn't show us all the files that actually exist on our drive. It tries to protect us from ourselves by hiding some system and application-specific files. You can work around this by either using the terminal (my preferred method) or by using the <kbd>Cmd</kbd>+<kbd>Shft</kbd>+<kbd>G</kbd> in Finder.

![Finder](http://blog.derfunke.net/wp-content/uploads/sites/2/2015/10/finder-cmd-shft-g.png)

Once you locate the file containing the browser's history, copy it to make a backup just in case we screw up.

## Safari

Safari is a little trickier than other browsers. AFAIK, Apple doesn't currently offer extensions to export data from its browser. So we have to get our hands dirty and hack it out of the browser.

But I found that there's another way to do it, takes a few steps but it's rather easy. Turns out that all browsers, Firefox, Chrome and Safari all keep their histories in a `sqlite` database. It's an embedded database system that is often found in apps. So this means that you can use any `sqlite` database viewer to open those files and inspect them. This one is pretty good and simple: http://sqlitebrowser.org/  

1. Download the sqliteBrowser dmg for osx. 
2. Install in your applications folder.
3. open sqliteBrowser
4. The file containing your Safari history is in `~/Library/Safari/History.db`
5. Open that file with sqliteBrowser, your OSX file open dialog probably will not show the `~/Library` directory, that's Apple trying to protect you from yourself. While the file open dialog is open, press <kbd>Cmd+Shft+G</kbd>, you will see the Go To Dialog. Paste this `~/Library/Safari/`, and you'll see the History DB file there.
6. Go to the *execute SQL* tab.
7. Paste this code:
```sql
SELECT 
  datetime(hv.visit_time + 978307200, 'unixepoch', 'localtime') as last_visited, 
  hi.url,
  hv.title
FROM 
  history_visits hv, 
  history_items hi 
WHERE 
  hv.history_item = hi.id;
```
8. This basically get's three fields from the database, the time of the last visit, the title and the url.
9. If everything goes well you should see something like this screenshot.
10. Use the button beneath the result set to export those results to CSV format.

![sqliteBrowser](http://blog.derfunke.net/wp-content/uploads/sites/2/2015/10/history_sqlite.png)

If this method fails for you, try these other approaches:
- [Here's a little guide](http://www.digital-detective.net/processing-apple-safari-browser/).
- You can also try this guy's Ruby script [this Ruby script](https://gist.github.com/patrikjohansson/3896557).

## Chrome

Chrome keeps its history, in a file that is typically located at `~/Library/Application\ Support/Google/Chrome/Default/History`. You can use the same method explained above to work with this file, but because the database structure is slightly different, we will to modify the sql code slightly. Here's a clip that will work with Chrome.

```sql
SELECT 
  datetime(last_visit_time/1000000-11644473600, "unixepoch") as last_visited, 
  url, 
  title, 
  visit_count 
FROM urls;
```

Alternatively there are some Chrome add-ons that will export historical data. You can try https://github.com/christiangenco/chrome-export-history or [History Trends Unlimited](https://chrome.google.com/webstore/detail/history-trends-unlimited/pnmchffiealhkdloeffcdnbgdnedheme)

## Firefox
Same technique as above, this time the file is called `places.sqlite` and is located in the profile directory located here `~/Library/Application Support/Firefox/Profiles/`.

```sql
SELECT 
  datetime(moz_historyvisits.visit_date/1000000,'unixepoch'), 
  moz_places.url, 
  moz_places.title
FROM 
  moz_places, 
  moz_historyvisits 
WHERE 
  moz_places.id = moz_historyvisits.place_id;
```
## Windows browsers
If you want to get the browser history from a windows browser there are some tools that can help you. Try [Browsing History View](http://www.nirsoft.net/utils/browsing_history_view.html). Seems to support all common browsers. I haven't tested this because I don't use Windows.

## Working with history data

Once you have exported the data, you should end up with a CSV (Comma Separated Values) file that looks a bit like this one. 

```
2015-10-15 21:29:01,http://www.nicolascollins.com/look.htm,Nicolas Collins: Look
2015-10-15 21:29:10,http://www.nicolascollins.com/neruda.htm,La Sebastiana
2015-10-15 21:29:06,http://www.nicolascollins.com/photos.htm,Nicolas Collins: Photos
2015-03-25 14:25:53,"http://www.google.nl/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CCcQFjAA&url=http%3A%2F%2Frefspace.com%2Fquotes%2FCarl_Sagan%2FQ263&ei=XLcSVZj2HcK7Pf-5gKAC&usg=AFQjCNFpaF39ODuN1-cS6Y6ghDPWyXDvmQ&bvm=bv.89184060,d.ZWU&cad=rja",
2015-03-25 14:25:54,http://refspace.com/quotes/Carl_Sagan/Q263,Carl Sagan Quote: All civilizations become either spacefaring or extinct. - Refspace
2015-03-25 14:25:56,http://www.dailygalaxy.com/my_weblog/2012/09/what-will-a-civilization-a-million-years-ahead-of-earth-look-like-weekend-feature.html,"""What Will a Civilization a Million Years Ahead of Earth Look Like?"""
2015-03-25 14:25:55,"http://www.google.nl/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&ved=0CD4QFjAD&url=http%3A%2F%2Fwww.dailygalaxy.com%2Fmy_weblog%2F2012%2F09%2Fwhat-will-a-civilization-a-million-years-ahead-of-earth-look-like-weekend-feature.html&ei=XLcSVZj2HcK7Pf-5gKAC&usg=AFQjCNEnfnUdBF6fjsHXlxChXJrrZmXYog&bvm=bv.89184060,d.ZWU&cad=rja",
```

### Importing a fresh history to a clean Chrome

In order to analyze the data, we are going to import it into Chrome. 

1. Copy the code bellow and save it to a file named `importhistory.py` in your desktop.
2. Save the CSV file you want to import as history.csv in your desktop.
3. Open Chrome and clean the browsing history data by going to the menu `Chrome > Clear Browsing Data...`. Your copy of chrome should now have a clean history.
4. Import our *hacked* history from another browser, into our fresh Chrome. Tadam! Your data is now ready for analysis.


```python
#!/usr/bin/env python
## See: https://gist.github.com/dropmeaword/9372cbeb29e8390521c2
import csv
from os.path import expanduser
import sqlite3
import time, datetime

# the CSV data you obtained from somebody else's browser
CSV_FILE="~/Desktop/history.csv"
# the place where Chrome stores its history and that we will use
# to analyze our source data
HISTORY_DB='~/Library/Application Support/Google/Chrome/Default/History'

# open destination database
conn = sqlite3.connect(expanduser(HISTORY_DB))
# get a data cursor to work with the database
c = conn.cursor()

def chrome_list_history():
    """ list existing history in chrome """
    result = c.execute('SELECT datetime(last_visit_time/1000000-11644473600, "unixepoch") as last_visited, last_visit_time, url , title, visit_count FROM urls;')

    for row in result:
       print row

def chrome_insert_visit(url, title, when=13089235804776906):
    """ there must be an entry in urls and another in visits for Chrome to recognize the history entry """
    c.execute('INSERT INTO urls (last_visit_time, url, title, visit_count) VALUES (?, ?, ?, ?)', (when, url, title, 1))
    lid = c.lastrowid
    c.execute('INSERT INTO visits (url, visit_time, visit_duration, from_visit, transition, segment_id) VALUES (?, ?, ?, ?, ?, ?)', (lid, when, 42047037, 0, 805306376, 0))


def import_to_chrome():
    print "Opening history CSV data from", CSV_FILE
    with open(expanduser(CSV_FILE), 'rb') as f:
        reader = csv.reader(f, delimiter=',', quotechar='"')
        for row in reader:
            try:
                when = time.mktime(datetime.datetime.strptime(row[0], "%Y-%m-%d %H:%M:%S").timetuple())
                when = int(when + 11644473600)*1000000
                timestamp = datetime.datetime.strptime(row[0], "%Y-%m-%d %H:%M:%S") #- datetime.datetime(1970, 1, 1)
                print "Importing: ", when, row
                chrome_insert_visit(unicode(row[1]), unicode(row[2]), when)
            except ValueError as e:
                pass

print
print "*"*70
print

import_to_chrome()
#chrome_list_history()
#chrome_insert_visit('http://www.kimchi.nl', 'Kimchi')

print "Closing DB"
conn.commit()
conn.close()
```

### Trouble?

You might get some errors while running the python code. If the error looks like this:
```
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named sqlite3
```

You are missing the library `sqlite3`, which allows our code to work with databases. Simply install it by typing this command in the command line:

```
$ sudo pip install sqlite3
```

*Note that you do not need to type the dollar sign, this is just a convention used in documentation and tutorials to indicate that this is a command to be typed in the terminal.*

If your OS complains that `pip` doesn't exist, you can install it by typing.

```
$ sudo easy_install pip
```

### Some links for reference
- [Chrome Transition Values](http://www.obsidianforensics.com/blog/chrome-transition-values)
- [Chrome Transitions](http://kb.digital-detective.net/display/BF/Page+Transitions)
- [How Chrome Stores Browsing History](http://lowmanio.co.uk/blog/entries/how-google-chrome-stores-web-history/?printerfriendly=true)