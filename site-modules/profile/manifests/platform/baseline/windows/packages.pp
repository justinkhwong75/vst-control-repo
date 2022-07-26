class profile::platform::baseline::windows::packages {

  exec { 'trend_micro':
    command => 'C:\Windows\System32\msiexec.exe /i C:\Temp\Agent-Windows-20.0.0-4959.x86_64\Agent-Core-Windows-20.0.0-4959.x86_64.msi /qn /norestart /l* C:\Temp\Agent-Windows-20.0.0-4959.x86_64\install.log',
  }

}
