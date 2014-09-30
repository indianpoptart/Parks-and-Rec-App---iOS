//
//  NPAgendaViewController.h
//  Ridgefield Parks and Recreation
//
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NPAgendaViewController : UIViewController{
	
	IBOutlet UIWebView *webview;
	IBOutlet UIActivityIndicatorView*activityind;
	NSTimer *timer;
	
}

@end
