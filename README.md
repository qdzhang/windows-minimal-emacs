# Minimal Emacs configurations for Windows

Using Emacs on Windows is annoying. There are some methods to assuage the frustrations.

- Use the built-in packages. Keep the configurations as simple as possible.
- <kbd>M-:</kbd>  `user-init-file` <kbd>RET</kbd> to see the config files path.
- Use AHK to map <kbd>C-SPC</kbd> to <kbd>C-@</kbd>. See `Emacs.ahk`.

## How to make the AHK script run when Windows startup?

Press Windows+R, then type `shell:startup`. Create a shortcut to the target AHK script on the startup folder.

## See the Emacs manual about Microsoft Windows

<kbd>M-x</kbd> `info-emacs-manual`(with keybinding <kbd>C-h r</kbd>), then search for the `Microsoft Windows` node.
