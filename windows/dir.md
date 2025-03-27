
### dir

```
dir /?
```

[dir](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/dir)

[dir.md](https://github.com/MicrosoftDocs/windowsserverdocs/blob/main/WindowsServerDocs/administration/windows-commands/dir.md)


#### Only names

[Batch File; List files in directory, only filenames](https://stackoverflow.com/questions/23228983/batch-file-list-files-in-directory-only-filenames)

[Windows Command Prompt: dir + what option shows only Directories and not files?](https://superuser.com/questions/1104377/windows-command-prompt-dir-what-option-shows-only-directories-and-not-files)

> If you use /a without specifying Attributes, dir displays the names of all files, including hidden and system files. 

> Using a colon (:) is optional

##### Only all names

```
dir /a /b  > @content-names.txt
```

#### Only names excluding directories

```
dir /b /a-d > @content-file-names.txt
```

or

```
dir /b /a:-d > @content-file-names.txt
```


### Custom `tree` command by PowerShell

```
Function Get-Tree {
    param([string]$Path = ".", [string]$Indent = "")
    Get-ChildItem -LiteralPath $Path | ForEach-Object {

         "$Indent|--$($_.Name)" # "$Indent|-- $_"   # Default is name.
       # "$Indent|   Creation Time   : $($_.CreationTime)"
       # "$Indent|   Last Write Time : $($_.LastWriteTime)"
       # "$Indent|   Length          : $($_.Length) bytes"
       # "$Indent|   Attributes      : $($_.Attributes)"
        
        if (-not $_.PSIsContainer) { # Is it a file
           # "$Indent|   Length: $($_.Length) bytes"
        }

        if ($_.PSIsContainer) { # Is it a directory
            # Recursively process subfolders
            Get-Tree -Path $_.FullName -Indent "$Indent|  "
           # ""  # Add an empty line
        }
    }
}
Get-Tree | Out-File -FilePath '.@content.txt' -Encoding utf8
```

```
Get-ChildItem -Recurse | Out-File -FilePath content.txt -Encoding utf8
```

```
Get-ChildItem -LiteralPath "<Folder_Path>" | ForEach-Object {
    Write-Output "Name property = $($_.Name)"
}
```

```
Get-ChildItem | Select-Object Name, Length, CreationTime, LastWriteTime, Attributes | Format-List
```


### tree

[tree](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/tree)

```
chcp 65001
tree /F /A > content.txt
```

#### Does not work for `utf8` files or folders

```
tree /F /A | Out-File -FilePath content.txt -Encoding utf8
```





