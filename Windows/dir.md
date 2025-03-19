

tree /F  > content.txt
tree ?
tree /?
tree /F /A > content.txt


```
chcp 65001
tree /F /A > content.txt
```

```
tree /F /A | Out-File -FilePath content.txt -Encoding utf8
```


```
Get-Content content.txt | Set-Content -Path utf8_content.txt -Encoding utf8
```

```
Get-ChildItem -Recurse | Out-File -FilePath content.txt -Encoding utf8
```


```
Function Get-Tree {
    param([string]$Path = ".", [string]$Indent = "")
    Get-ChildItem -LiteralPath $Path | ForEach-Object {
        "$Indent|-- $_"
        if ($_.PSIsContainer) {
            Get-Tree -Path $_.FullName -Indent "$Indent|  "
        }
    }
}
Get-Tree | Out-File -FilePath content.txt -Encoding utf8

```


```
Function Get-Tree {
    param([string]$Path = ".", [string]$Indent = "")
    Get-ChildItem -LiteralPath $Path | ForEach-Object {
        "$Indent|-- $_"
        if ($_.PSIsContainer) {
            Get-Tree -Path $_.FullName -Indent "$Indent|  "
            ""  # Add an empty line after processing a folder
        }
    }
}
Get-Tree | Out-File -FilePath content.txt -Encoding utf8
```




