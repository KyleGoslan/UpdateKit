# UpdateKit
[![Version](https://img.shields.io/cocoapods/v/UpdateKit.svg?style=flat)](http://cocoapods.org/pods/UpdateKit)
[![License](https://img.shields.io/cocoapods/l/UpdateKit.svg?style=flat)](http://cocoapods.org/pods/UpdateKit)
[![Platform](https://img.shields.io/cocoapods/p/UpdateKit.svg?style=flat)](http://cocoapods.org/pods/UpdateKit)

## Usage

Create an instance of a `UpdateKit` object:

```swift
let updateKit = UpdateKit()
```


### App Updated

If you need to perform an action when your app is updated:

```swift
updateKit.appUpdate { appVersion in
    // Code to run on app update
}
```

Note: Will always run once.


### First launch

If you need to run something on first launch:

```swift
updateKit.firstLaunch { 
    // Code to be run on first app launch
}
```


## Installation

UpdateKit is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "UpdateKit"
```

## Author

KyleGoslan

## License

UpdateKit is available under the MIT license. See the LICENSE file for more info.
