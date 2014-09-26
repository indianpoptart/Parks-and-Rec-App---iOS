//
//  PremiumGroupController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "PremiumGroupController.h"

@interface PremiumGroupController ()

@end

@implementation PremiumGroupController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"premiumgroup" ofType:@"pdf"];
	NSURL *url = [NSURL fileURLWithPath:path];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[pgview loadRequest:request];
	[pgview setScalesPageToFit:YES];
	[pgview addSubview:activityind];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0)
											 target:self
										   selector:@selector(loading)
										   userInfo:nil
											repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
	if (!pgview.loading)
		[activityind stopAnimating];
	else
		[activityind startAnimating];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
@end
