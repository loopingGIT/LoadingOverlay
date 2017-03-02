# LoadingOverlay
A simple Overlay view

This is a tiny project as result of [this Stackoverflow question link](http://stackoverflow.com/questions/27960556/loading-an-overlay-when-running-long-tasks-in-ios/34211724#34211724)

## How to use

Just downlaod the LoadingOverlay.swift file into your project and then from you view controller:
``` bash
//to show: 
LoadingOverlay.shared.showOverlay(superView:self.view) // in this case, self.view is the controller's view

//to hide: 
LoadingOverlay.shared.hideOverlay()
```

The overlay view will be placed at the center of the view passed as parameter on showOverlay method.
