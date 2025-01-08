# Keyboard Shortcuts

2024-11-09

## "cmd+k cmd+right" (added user "cmd+shift+]")

* Source: System
  * Command: View: Focus Right Editor Group (workbench.action.focusRightGroup)
  * When: -

## "cmd+k cmd+left" (added user "cmd+shift+[")

* Source: System
  * Command: View: Focus Left Editor Group (workbench.action.focusLeftGroup)
  * When: -

## "cmd+K+Z"

* Source: System
  * Commmand: View: Toggle Zen Mode
  * Changed from "cmd+K+Z" to "shift+cmd+space"

## "shift+cmd+space"

* Source: User
  * Command: View: Toggle Full Screen Mode  # deprecated

## "cmd+j"

* Source: System
  * Command: View: Toggle Panel Visibility
  * When: -

## "cmd+]"

* Source: User
  * Command: View: Open Next Editor
  * When: -

* Source: System
  * Command: Indent Line
  * When: textInputFocus && !editorReadonly

## "cmd+["

* Source: User
  * Command: View: Open Previous Editor
  * When: -

* Source: System
  * Command: Outdent Line
  * When: textInputFocus && !editorReadonly

## formerly: "shift+cmd+]" (added "shift+cmd+J")

* Source: User
  * Command: Terminal: Focus Terminal
  * When: - 

* Source: System
  * Command: Terminal: Focus Next Terminal Group
  * When: terminalFocus && terminalHasBeenCreated && !terminalEditorFocus ||
          terminalFocus && terminalProcessSupported && !terminalEditorFocus

## formerly: "shift+cmd+[" (added "shift+cmd+K")

* Source: User
  * Command: View: Focus next editor group
  * When: -

* Source: System
  * Command: Terminal: Focus Previous Terminal Group
  * When: terminalFocus && terminalHasBeenCreated && !terminalEditorFocus ||
          terminalFocus && terminalProcessSupported && !terminalEditorFocus

## "shift+cmd+j"

* Source: System
  * Command: Terminal: workbench.action.search.toggleQueryDetails
  * When: inSearchEditor || searchViewletFocus

## "shift+cmd+k"

* Source: System
  * Command: Delete LIne
  * When: textInputFocus && !editorReadonly
