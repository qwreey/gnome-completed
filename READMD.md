
# What is gnome-completed?

gnome-completed project is targeting to optimize and utilize gnome-shell by rewriting some animations such as MinimizeAnimation and adding general features such as NoAnnoyance, MoveDateMenu, RemoveDefaultDash, NemoDesktopIntegration and so on.

Every feature is **moduled**, This extension architecture allows fewer overheads, which means if you disable some features, their codes will not be loaded, and not affect gnome startup time and unlock time.

# What things are included in this?

## General Features

1. NoAnnoyance
    Removes 'Window is ready' notification
2. RemoveAppMenu
    Removes AppMenu on topbar panel
3. PanelDateFormat
    Reformating date text on topbar panel
4. RemoveAltTabDelay
    Removes alt tab popup delay
5. RemoveDash
    Removes default dash
6. StartupNoOverview
    Do not show overview on gnome startup
7. TransparentPanel
    Set transparent of topbar panel
8. AnimationSpeed
    Adjust animation speed, such as activity(overview) animations, apps animations
9. TopbarScroll
    Scroll topbar to switch workspace

## Rewritten Things

1. MinimizeAnimation
    Gnome's default window minimize animation is very buggy, laggy, and flickers. This rewrite uses capture of the window for animating, which does not flicker and is less laggy

## Additional Features

1. EdgeDragWorkspaceSwitches
    Crashes window to edge to move the window to another workspace, right side or left side
    This feature will be comfortable for single monitor
    This feature is copy of [Desktop-Cube](https://github.com/Schneegans/Desktop-Cube) feature

2. NemoDesktopIntegration
    If you use nemo-desktop with gnome, you will see a weird bug, Desktop icon appears on windows when you switch workspace.
    This feature will hide nemo-desktop when you switching workspace.
    (Due to gsettings delay, you will see icons 1 frame, but better than before!)

3. MenuButtons
    Add app menu, overview button on topbar panel, and you can open workspace view by right click buttons

4. ChangeWorkspaceEasing
    Allows you to change workspace switching animation easing