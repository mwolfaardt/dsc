Add-Type @"
using System;
using System.Runtime.InteropServices;

public class DesktopIconsToggle {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

    [DllImport("user32.dll", SetLastError = true)]
    public static extern IntPtr FindWindowEx(IntPtr hwndParent, IntPtr hwndChildAfter, string lpszClass, string lpszWindow);

    [DllImport("user32.dll")]
    public static extern IntPtr SendMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);
}
"@

function Toggle-DesktopIcons {
    $progman = [DesktopIconsToggle]::FindWindow("Progman", $null)
    $desktop = [DesktopIconsToggle]::FindWindowEx($progman, [IntPtr]::Zero, "SHELLDLL_DefView", $null)

    if ($desktop -eq [IntPtr]::Zero) {
        $workerw = [IntPtr]::Zero
        do {
            $workerw = [DesktopIconsToggle]::FindWindowEx([IntPtr]::Zero, $workerw, "WorkerW", $null)
            $desktop = [DesktopIconsToggle]::FindWindowEx($workerw, [IntPtr]::Zero, "SHELLDLL_DefView", $null)
        } while ($desktop -eq [IntPtr]::Zero -and $workerw -ne [IntPtr]::Zero)
    }

    if ($desktop -ne [IntPtr]::Zero) {
        $WM_COMMAND = 0x0111
        $TOGGLE_DESKTOP_ICONS = 0x7402
        [DesktopIconsToggle]::SendMessage($desktop, $WM_COMMAND, [IntPtr]$TOGGLE_DESKTOP_ICONS, [IntPtr]::Zero) | Out-Null
    }
}

Toggle-DesktopIcons
