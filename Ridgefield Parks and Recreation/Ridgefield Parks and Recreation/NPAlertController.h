//
//  NPAlertController.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 6/26/15.
//  Copyright (c) 2015 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NPAlertController : UIViewController{
    
    IBOutlet UIWebView *alertview;
    IBOutlet UIActivityIndicatorView *activityind;
    NSTimer *timer;
}
@end
