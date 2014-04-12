//
//  FGDeviceColor.h
//  DeviceColorExample
//
//  Created by Finn Gaida on 12.04.14.
//  Copyright (c) 2014 Finn Gaida. All rights reserved.
//
// This class is based on Ortwin Gentz excellent answer on StackOverflow
// http://stackoverflow.com/questions/8463212/detecting-color-of-iphone-ipad-ipod-touch/19325796#19325796

typedef enum {
    FGDeviceColorWhite,
    FGDeviceColorBlack,
    FGDeviceColorUnknown
} FGColor;

#import <Foundation/Foundation.h>

@interface FGDeviceColor : NSObject

+ (FGColor)deviceColor;

@end
