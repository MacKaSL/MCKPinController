# MCKPinController

### A fully configurable controller for validating a pin number.

<iframe src="https://giphy.com/embed/SJCdraB7Dp07q7FtMb" width="270" height="480" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/SJCdraB7Dp07q7FtMb">via GIPHY</a></p> <img src="https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPadAir2-1.png" height="500"> <img src="https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPadAir2-2.png" height="500">

<img src="https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-1.PNG" height="400"> <img src="https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-2.PNG" height="400"> <img src="https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-3.PNG" height="400">


MCKPinController is a pin authentication controller written in Swift.

:iphone: iOS 9 or above

:hammer: Swift 4

:smiley: Happy coding


## Usage

- [Pods](#pods)
- [Features](#features)

## Pods

```
source 'https://github.com/CocoaPods/Specs.git'
target '<TARGET_NAME>' do
  pod 'MCKPinController', '~> 1.0.5'
end
```

## Features
- [Function configuration](#function-configuration)
  - [Initiating configuraition](https://github.com/MacKaSL/MCKPinController/blob/master/README.md#initiating-configuraition)
  - [Listening to changes](https://github.com/MacKaSL/MCKPinController/blob/master/README.md#listening-to-changes)
  - [Reset](https://github.com/MacKaSL/MCKPinController/blob/master/README.md#reset)
- [Top dots appearance configuration](#top-dots-appearance-configuration)
- [General view appearance configuration](#general-view-appearance-configuration)
- [Number pad appearance configuration](#number-pad-appearance-configuration)



### Function configuration

#### Initiating configuraition
Make an instance of `MCKConfiguration`.
```
let config = MCKConfiguration()
```
All the configuration to the controller happens through the `MCKConfiguration` class.

You can configure how many digits will be entered.
```
config.numberOfDigits = 6
```

If you want to animate dots when you rest the pin, set `true` for `shouldShakeOnReset`. By default, this is set to `false`.
```
config.shouldShakeOnReset = true`
```

#### Listening to changes
You are able to listen to pin number changes.
```
config.pinChanged = { pin in
  print("pin changed \(pin)")
}
```

And once the whole pin number is entered, completion block will be called.
```
config.completion = { pin in
  print("Completed pin received: \(pin)")
}
```

#### Reset

When the entered pin number is wrong or at anytime, you are able to reset the controller with
```
MCKPinController.reset()
```

### Top dots appearance configuration
You can configuration top dot appearance with `MCKDotAppearance`.

Properties:
```
fillingColor: UIColor
borderColor: UIColor
layerType: MCKLayerType
```
with `MCKLayerType`, you can configure dot type `square` or `rounded`. Default is set to `rounded`.

Example:
```
var dotAppearance = MCKDotAppearance()
dotAppearance.fillingColor = color
dotAppearance.borderColor = color
config.appearance.dots = dotAppearance
```

### General view appearance configuration
Cofigure general appearance of the controller

Properties:
```
backgroundColor: UIColor
blurEffect: UIBlurEffect
imageTint: UIColor
```

Example:
```
var appearance = MCKGeneralAppearance()
appearance.imageTint = color
appearance.blurEffect = UIBlurEffect(style: .light)
config.appearance.general = appearance
```

### Number pad appearance configuration
Configure the appearance of number pad

Properties:
```
fillingColor: UIColor
borderColor: UIColor
textColor: UIColor
borderWidth: CGFloat
backspaceTitle: String
backspaceImage: UIImage
layerType: MCKLayerType
```
When you want to have custom image or text on delete button, use below properties to configure it.
```
backspaceTitle: String
backspaceImage: UIImage
```
Note: If you set both image and text, only the image will appear. Only one at a time.
1. Image
2. Text

Example:
```
var numberPad = MCKNumberPadAppearance()
numberPad.textColor = color
numberPad.borderColor = color
numberPad.backspaceTitle = "↩︎"
config.appearance.numberPad = numberPad
```

with `MCKLayerType`, you can configure dot type `square` or `rounded`. Default is set to `rounded`.

Anyone is welcome to contribute...

Cheers :smiley: :iphone: :hammer:
===
