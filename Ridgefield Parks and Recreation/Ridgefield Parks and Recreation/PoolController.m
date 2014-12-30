//
//  PoolController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "PoolController.h"

@interface PoolController ()

@end

@implementation PoolController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//NSString *path = [[NSBundle mainBundle] pathForResource:@"pool" ofType:@"pdf"];
	//NSURL *url = [NSURL fileURLWithPath:path];
	//NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [poolview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://nikhilp.org/pandr-pdf/pool.pdf"]]];
	[poolview setScalesPageToFit:YES];
	[poolview addSubview:activityind];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0)
											 target:self
										   selector:@selector(loading)
										   userInfo:nil
											repeats:YES];
    UIImage *statusImage = [UIImage imageNamed:@"reload.png"];
    UIImageView *activityImageView = [[UIImageView alloc]
                                      initWithImage:statusImage];
    
    //Add more images which will be used for the animation
    activityImageView.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:@"reload.png"],
                                         [UIImage imageNamed:@"reload2.png"],
                                         [UIImage imageNamed:@"reload3.png"],
                                         [UIImage imageNamed:@"reload4.png"],
                                         [UIImage imageNamed:@"reload5.png"],
                                         [UIImage imageNamed:@"reload6.png"],
                                         [UIImage imageNamed:@"reload7.png"],
                                         [UIImage imageNamed:@"reload8.png"],nil];
    activityImageView.alpha = 1.0;
    activityImageView.animationDuration = 1.0;
    
    activityImageView.frame = CGRectMake(-8, 0, 50, 50);
    [activityImageView startAnimating];
    [activityind addSubview:activityImageView];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
	if (!poolview.loading)
		[activityind stopAnimating];
	else
		[activityind startAnimating];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
