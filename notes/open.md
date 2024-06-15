# Open commands
## os
* Leave empty for OS specific default:
    * UNIX:    `"xdg-open"`
    * macOS:   `"open"`
    * Windows: `"cmd"`

## change default app
### xdg-open
まず、現在のデフォルトアプリケーションを確認しておきます。
```
xdg-mime query default inode/directory
```
変更
```
xdg-mime default nautilus.desktop inode/directory
```
