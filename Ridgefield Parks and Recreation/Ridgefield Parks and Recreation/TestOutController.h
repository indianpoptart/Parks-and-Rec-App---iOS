//
//  TestOutController.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2015 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestOutController : UIViewController{
    
    IBOutlet UIWebView *testview;
    IBOutlet UIActivityIndicatorView *activityind;
    NSTimer *timer;
}
@end
