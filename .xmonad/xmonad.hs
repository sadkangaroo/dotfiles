import XMonad

import qualified System.IO.UTF8

import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.Loggers

import XMonad.Prompt
import XMonad.Prompt.RunOrRaise (runOrRaisePrompt)
import XMonad.Prompt.AppendFile (appendFilePrompt)

import XMonad.Operations
import System.IO
import System.Exit
import XMonad.Actions.CycleWS
 
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.EwmhDesktops
 
import XMonad.Layout.NoBorders (smartBorders, noBorders)
import XMonad.Layout.PerWorkspace (onWorkspace, onWorkspaces)
import XMonad.Layout.Reflect (reflectHoriz)
import XMonad.Layout.IM
import XMonad.Layout.SimpleFloat
import XMonad.Layout.Spacing
import XMonad.Layout.ResizableTile
import XMonad.Layout.LayoutHints
import XMonad.Layout.LayoutModifier
import XMonad.Layout.Grid

lowerVolume    = "<XF86AudioLowerVolume>"
lowerVolumeCMD = "amixer -c 0 set Master 2-"
raiseVolume    = "<XF86AudioRaiseVolume>"
raiseVolumeCMD = "amixer -c 0 set Master 2+ unmute"

myKeys = [ (raiseVolume  , spawn raiseVolumeCMD               ) -- raise volume
         , (lowerVolume  , spawn lowerVolumeCMD               ) -- lower volume
         , ("M-p", spawn "dmenu_run -b -fn '-*-*-*-*-*-*-20-*-*-*-*-*-*-*' -nb black -nf white")
         ]

myManageHook = composeAll
    [
         className =? "mpv" --> (doFullFloat)
         , isFullscreen --> (doFullFloat)
    ]

myConfig = defaultConfig {
          terminal           = "urxvt"
        , layoutHook         = noBorders $ smartBorders $ avoidStruts $ layoutHook defaultConfig
        , manageHook         = myManageHook
} `additionalKeysP` myKeys

main = xmonad myConfig
