Before installing script set Powershell Execution Policy

`PS> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`

To install script `PS> Install-Script` from download directory

To use, navigate to folder containing files in File Explorer, then type 'Powershell' in the navigation box.
![image](https://user-images.githubusercontent.com/21370528/182045045-f8d0201a-e244-48eb-8acf-0d3cad68b7de.png)

Powershell Prompt will appear, confirm the directory is the disired directory then type `Rename-Files` (or `rf` for short) in the Powershell prompt.
![image](https://user-images.githubusercontent.com/21370528/182045079-640eded8-8f5f-45d3-ba00-65e3343d50a1.png)

Confirm desired filenames in File Explorer
![image](https://user-images.githubusercontent.com/21370528/182045091-7f463899-d13f-4b24-b2d2-bb79d8b55707.png)

For more information type `Get-Help Rename-Files` in Powershell.
