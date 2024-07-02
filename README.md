# .config

Items for personal and work macs.

## VS Code

* Keyboard Shortcuts [Command + K, Command + S]
* Delete [Shift H] and [Shift L] keyboard shortcuts, as they prohibit the text entry of "H" and "L".
* Shift H -> None
  * View: Open Previous Editor
    {
      "key": "shift+h",
      "command": "workbench.action.previousEditor",
      "when": "editorFocus && vim.active && !inDebugRepl && vim.mode != 'Insert'"
    }
* Shift L -> None
  * View: Open Nexst Editor
    {
      "key": "shift+l",
      "command": "workbench.action.nextEditor",
      "when": "editorFocus && vim.active && !inDebugRepl && vim.mode != 'Insert'"
    }

