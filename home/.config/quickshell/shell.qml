import Quickshell
import qs.bar

ShellRoot {
    // One Bar per connected monitor; bars are added/removed as screens change
    Variants {
        model: Quickshell.screens

        Bar {}
    }
}
