# SKTimer

[![CI Status](http://img.shields.io/travis/KyleGoslan/SKTimer.svg?style=flat)](https://travis-ci.org/KyleGoslan/SKTimer)
[![Version](https://img.shields.io/cocoapods/v/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![License](https://img.shields.io/cocoapods/l/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![Platform](https://img.shields.io/cocoapods/p/SKTimer.svg?style=flat)](http://cocoapods.org/pods/SKTimer)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/SKTimer.svg)]()

## Requirements

Designed to be used in a `SpriteKit` project. 

## Usage

Create an instance of an `SKTimer` object 

```swift 
let timer = SKTimer()
```

Call the `start(_:)` method on your new timer passing in the current time from the scene. This is the `currentTime` parameter from your scenes update method. Usually you'll want to create a property in your scene to hold this value so you'll have access to it from outside your update method:

```swift 
timer.start(currentTime)
```

In your scenes update method make sure you call the timers `update(_:completion:)` method passing in the current time. This is how the timer calculates its count:

```swift
timer.update(currentTime, timeUp: nil)
```

You can get the current time of the timer from it `time` property:

```swift
print(timer.time)
```

##Example Scene

Here is very simple example scene that starts an `SKTimer` on a touch:

```swift
import SpriteKit
import SKTimer

class GameScene: SKScene {

    var currentTime = 0.0
    var timer = SKTimer()

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        timer.start(currentTime)
    }

    override func update(currentTime: CFTimeInterval) {
        self.currentTime = currentTime

        if timer.on {
            print(timer.time)
            timer.update(currentTime, timeUp: nil)
        }
    }
}

```

##Time Limits

You can set optional time limits for your timer and receive a callback when that limit is reached. Create a timer with a limit of 10 seconds like this:

```swift
var timer = SKTimer(limit: 10)
```

##Multiplier

The default of the multiplier property is 1.0. You can increase or decrease this to speed up or slowdown the speed of the counter. E.g to create a timer that is twice as fast as real time: 

```swift
var timer = SKTimer(multiplier: 2.0)
```

## Installation

SKTimer is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "SKTimer"
```

## Author

KyleGoslan

## License

SKTimer is available under the MIT license. See the LICENSE file for more info.
