//
//  NPViewController.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NPViewController : UIViewController{
    IBOutlet UIWebView *alertview;
    IBOutlet UIActivityIndicatorView *activityind;
    
    NSTimer *timer;
}
@property (nonatomic, strong) UILongPressGestureRecognizer * longPress;

-(IBAction)makePhoneCall:(id)sender;
-(IBAction)openSchedules:(id)sender;
-(IBAction)openAgenda:(id)sender;

@end
