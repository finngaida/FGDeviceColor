FGDeviceColor
=============

Class to retrieve you device's color programmatically. ATTENTION! This class used a private API and thus will not be accepted on the AppStore.

### Usage
You may import the `FGDeviceColor.h` file and retrieve either `FGDeviceColorBlack` or `FGDeviceColorWhite` from the `+ (FGColor)deviceColor` method. If it doesn't work as expected, you might as well take care of `FGDeviceColorUnknown`.

Take a look at the example project to fully understand the syntax and usage.

### Thanks
This class is heavily based on Ortwin Gentz excellent answer on [StackOverflow](http://stackoverflow.com/questions/8463212/detecting-color-of-iphone-ipad-ipod-touch/19325796#19325796).
