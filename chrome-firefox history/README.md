


## Browser history

Refer to [Browser histories by `Luis Rodil-Fernandez`](https://gist.github.com/dropmeaword/9372cbeb29e8390521c2) or [Browser histories by `Luis Rodil-Fernandez` (local version)](browser_history/browser_history.md) or [Browser histories by `Luis Rodil-Fernandez` (PDF version)](browser_history/playing%20around%20with%20Chrome's%20history.pdf)

***NOTICE : Wherever in above reference wrote about history location (`located` word) refer to following instruction in [`Histoy location section`](#Histoy-location)*** 

## History location

### History location for Chrome

Navigate to `chrome://version/` and get value of `Profile Path`.

Result might be something like : `C:\Users\<Username>\AppData\Local\Google\Chrome\User Data\Default` ***but also can be different for different profile***

Then find `History` file

__________________

### History location for  Edge

Navigate to `Edge://version/` and get value of `Profile Path`.

Result might be something like : `C:\Users\<Username>\AppData\Local\Microsoft\Edge\User Data\Default` ***but also can be different for different profile***

Then find `History` file

__________________

### History location for Firefox

Type `about:profiles` in URL.

In `Profile: default-release` section, get value of `Root Directory`. 

Result might be something like : `C:\Users\<UserName>\AppData\Roaming\Mozilla\Firefox\Profiles\<Random-Value>.default-release` ***but also can be different for different profile***

Then find `places.sqlite` file.


<strike>

### This is old instruction and is deprecated

In `Profile: default` section, navigate to parent directory of `Root Directory` and then navigate to a folder with `*-release` postfix.


For example if value of `Root Directory` in `Profile: default` section is `C:\Users\<YourUserName>\AppData\Roaming\Mozilla\Firefox\Profiles\4mg41mcv.default`,

then you must navigate to `C:\Users\<YourUserName>\AppData\Roaming\Mozilla\Firefox\Profiles` and then find a folder with `-release` postfix.

Pay attention : Replace `<YourUserName>` with your current username.

</strike>

 __________________