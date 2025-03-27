
# Issue

In the following steps, i created a situation that after unzip a file, `created datetime` of file is mor than `modified datetime` of file.

It is actually set `created datetime` to current date.


## Step i have done 

Using  `WinRAR 7.01 (64 bit)` in `Win11-24H2` at `2025-03-24`

1. Compres by selecting `Add to archive` and for `Archive format` select `Zip` instead of `RAR` and leave all other option as default as below

![General.png](./WinRAR%20compress%20config/1.%20General.png)

![Advanced.png](WinRAR%20compress%20config/2.%20Advanced.png)

![Options.png](WinRAR%20compress%20config/3.%20Options.png)

![Files.png](WinRAR%20compress%20config/4.%20Files.png)

![Backup.png](WinRAR%20compress%20config/5.%20Backup.png)

![Time.png](WinRAR%20compress%20config/6.%20Time.png)

![Comment.png](WinRAR%20compress%20config/7.%20Comment.png)

2. Extact by `Extract files...` and use the default config as below :

![General](WinRAR%20extract%20config/1.%20General.png)

![Advanced](WinRAR%20extract%20config/2.%20Advanced.png)

![Options](WinRAR%20extract%20config/3.%20Options.png)


## Solution

If you check `Set creation time` in the following when extracting then `created datetime` and `modified datetime` of exracted file is the same as original file.

![Advanced](WinRAR%20extract%20config/2.%20Advanced.png)

