# posh-nvm-completion

[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/nvm-completion.svg?style=flat-square)](https://www.powershellgallery.com/packages/nvm-completion/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/nvm-completion.svg?style=flat-square)](https://www.powershellgallery.com/packages/nvm-completion/)

A [nvm](https://github.com/coreybutler/nvm-windows) tab completion for [PowerShell](https://github.com/PowerShell/PowerShell).

## ⚙️ Installation

Install from [PowerShell Gallery](https://www.powershellgallery.com/)

```powershell
Install-Module nvm-completion -Scope CurrentUser
```

---

⚠️ If you haven't allowed script execution policy, set your script execution policy to `RemoteSigned` or `Unrestricted`.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 🛂 Usage

You have to import the module to use `nvm-completion`.

Add below command into your PowerShell profile.

```powershell
Import-Module nvm-completion
```

Then restart your PowerShell.  
Now you can use tab completion with **nvm**.

---

⚠️ If you don't have PowerShell profile yet, create it with below command!

```powershell
New-Item -ItemType File $profile
```

## Credits

Created using @gluons [yarn-completion](https://github.com/PowerShell-Completion/yarn-completion/)
