# DDNavText [![Build Status](https://travis-ci.org/Dids/DDNavText.png?branch=master)](https://travis-ci.org/Dids/DDNavText)

DDNavText allows you to easily show additional text in your UINavigationBar title. It additionally provides a custom delay for presenting and dismissing.

DDNavText is part of the DD-projects (check them out, they're cool!):

- DDDevice - Combines all DD-project in to one neat library (Coming Soon)
- [DDVersion](https://github.com/Dids/DDVersion.git) - Easily get the device name and type
- [DDCarrier](https://github.com/Dids/DDCarrier.git) - Easily get the current carrier name
- DDSize - Easily find out the device resolution (Coming Soon)
- [DDNavText](https://github.com/Dids/DDNavText.git) - Additional text for UINavigationBar title

More DD-projects are under development and will be added once completed.

## Usage
```objective-c
	PLEASE NOTE: DDNavText only works if your root view controller is a UINavigationController.

	// Show text
    [DDNavText showWithText:@"Hello from DDNavText"];

    // Show text and automatically hide after 2 seconds
    [DDNavText showWithText:@"Hello from DDNavText" dismissWithDelay:2.0];

    // Hide text
    [DDNavText dismiss];

    // Hide text after 2 seconds
    [DDNavText dismissWithDelay:2.0];

    // Get the current visibility state
    BOOL isVisible = [DDNavText isVisible];
```

## Demo

To run the example project, simply open up `DDNavTextDemo.xcodeproj` and hit Build & Run.

## Requirements

## Installation using CocoaPods (RECOMMENDED)

DDNavText is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
    pod "DDNavText"
```

## Manual Installation

Simply copy `DDNavText.h` and `DDNavText.m` to your project and import DDNavText.h like so:
```objective-c
	#import "DDNavText.h"
```

Using the CocoaPod installation method is recommended over the manual installation, as this way your copy of DDNavText is always up to date.

## Author

Pauli 'Dids' Jokela, pauli.jokela@didstopia.com and Didstopia, http://didstopia.com

## License

DDNavText is available under the MIT license. See the LICENSE file for more info.
