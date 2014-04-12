//
//  FGDeviceColor.m
//  DeviceColorExample
//
//  Created by Finn Gaida on 12.04.14.
//  Copyright (c) 2014 Finn Gaida. All rights reserved.
//

#import "FGDeviceColor.h"

@implementation FGDeviceColor

+ (FGColor)deviceColor {
    
    UIDevice *device = [UIDevice currentDevice];
    SEL selector = NSSelectorFromString(@"_deviceInfoForKey:");

    if ([device respondsToSelector:selector]) {
        
        if ([[device performSelector:selector withObject:@"DeviceColor"] isEqualToString:@"black"]) {
            
            return FGDeviceColorBlack;
            
        } else if ([[device performSelector:selector withObject:@"DeviceColor"] isEqualToString:@"white"]) {
            
            return FGDeviceColorWhite;
            
        }
        
    }
    
    return FGDeviceColorUnknown;
    
}

@end
