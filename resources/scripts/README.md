## Windows Commands
- List all installed packages.
```powershell
winget list
```
- Update all packages.
```powershell
winget upgrade --all
```
- Scan disks and search for errors to fix them.
```powershell
sfc /scannow
```
- Hide a folder inside an image.
```cmd
copy /b image_path.jpg + folder_path.zip
```
- Show saved Wi-Fi networks.
```powershell
netsh wlan show profile
```
- Show the password of a Wi-Fi network.
```powershell
netsh wlan show profile name="network_name" key=clear
```
