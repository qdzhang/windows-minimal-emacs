# Minimal Emacs configurations for Windows

Using Emacs on Windows is annoying. There are some methods to assuage the frustrations.

- Use the built-in packages. Keep the configurations as simple as possible.
- `M-: user-init-file RET` to see the config files path.
- Use AHK to map `C-SPC` to `C-@`. See `Emacs.ahk`.

## How to make the AHK script run when Windows startup?

Press Windows+R, then type `shell:startup`. Create a shortcut to the target AHK script on the startup folder.
