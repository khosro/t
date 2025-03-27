
### History

`Get-PSReadlineOption`

### Execution policy

Issue :

**Your_Script_Name.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.**

Solution :

**Notice : If you and all security people are 100% sure that your script does not have any security issue, then only bypass this policy for your script not all files by below command**

`powershell -ExecutionPolicy Bypass -File Your_Script_Name.ps1`

[PowerShell says "execution of scripts is disabled on this system."](https://stackoverflow.com/a/9167524)

Further reference :

[about_Execution_Policies](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.5)


### Convert to `utf8`

```
Get-Content content.txt | Set-Content -Path utf8_content.txt -Encoding utf8
```

### Miscellaneous commands

```
Get-ChildItem | Format-List
```

