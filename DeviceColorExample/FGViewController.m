//
//  FGViewController.m
//  DeviceColorExample
//
//  Created by Finn Gaida on 12.04.14.
//  Copyright (c) 2014 Finn Gaida. All rights reserved.
//

#import "FGViewController.h"

@implementation FGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    BOOL isBlack = ([FGDeviceColor deviceColor] == FGDeviceColorBlack);
    
    self.view.backgroundColor = (isBlack) ? [UIColor blackColor] : [UIColor whiteColor];
    
    UILabel *sample = [[UILabel alloc] initWithFrame:self.view.frame];
    sample.backgroundColor = [UIColor clearColor];
    sample.textColor = (isBlack) ? [UIColor whiteColor] : [UIColor blackColor];
    sample.textAlignment = NSTextAlignmentCenter;
    sample.font = [UIFont fontWithName:@"Helvetica" size:30];
    sample.text = [NSString stringWithFormat:@"This device is %@", (isBlack) ? @"black" : @"white"];
    [self.view addSubview:sample];
    
    if ([[[[UIDevice currentDevice] systemVersion] substringToIndex:1] isEqualToString:@"7"]) {
        [self setNeedsStatusBarAppearanceUpdate];
    }

}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    if ([FGDeviceColor deviceColor] == FGDeviceColorBlack) {
        return UIStatusBarStyleLightContent;
    } else {
        return UIStatusBarStyleDefault;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
