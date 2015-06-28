//
//  NPAboutViewController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/6/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "NPAboutViewController.h"

@interface NPAboutViewController ()

@end

@implementation NPAboutViewController

- (void)viewDidLoad {
	[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"gradient2.png"]]];
    [super viewDidLoad];
    // Do view setup here.
}
- (UIInterfaceOrientation) preferredInterfaceOrientationForPresentation {
    // Return the orientation you'd prefer - this is what it launches to. The
    // user can still rotate. You don't have to implement this method, in which
    // case it launches in the current orientation
    return UIInterfaceOrientationPortrait;
}

@end
