

Refer [What Are Windows CAB Files and How Do You Install Them?](https://www.makeuseof.com/windows-cab-files-guide/)

## How to Install Driver Updates From a CAB File 

1. Double-click the `CAB` file to view its contents. Press `Ctrl + A` to select all the files, right-click, and choose `Extract`. Choose the location where you want to extract the contents of the `CAB` file and click `Extract`.
   
   My Note : Alternatively, if you have `WinRAR`,right-click on file and select `Extract to ...`

2. Press `Win + X` hotkey to open the Power User menu and choose `Device Manager`.

3. Right-click the device for which you have downloaded the driver update and choose `Update driver`. 

4. Click `Browse my computer for drivers`. 

5. Click `Browse` and navigate to the location where you have extracted the `CAB` file. 

6. Select the folder that contains the extracted file and click `OK`. Click `Next`. The `Device Manager` will now install the driver update on your computer.

7. Restart your computer

## Command Prompt

1. Press `Win` key to open the `Start Menu`, type `Command Prompt` in the search bar, and choose `Run as administrator` from the right pane. 

2. In the elevated `Command Prompt` window, type the following command and press Enter. Make sure to replace `CAB location` with the `CAB` file path.   
    `dism /Online /Add-Package /PackagePath:"CAB location"`

3. Restart your computer


## Windows PowerShell

1. Open the Start Menu, type `Windows PowerShell`, and choose `Run as administrator` from the right pane.

2. Type the following command and press Enter. Make sure to replace `CAB location` with the copied path. 
   
   `Add-WindowsPackage -Online -PackagePath "CAB location"`

3. Restart your computer
    