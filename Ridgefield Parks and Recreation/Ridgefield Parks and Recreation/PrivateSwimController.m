//
//  PrivateSwimController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "PrivateSwimController.h"

@interface PrivateSwimController ()

@end

@implementation PrivateSwimController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
//	NSString *path = [[NSBundle mainBundle] pathForResource:@"privSwim" ofType:@"pdf"];
//	NSURL *url = [NSURL fileURLWithPath:path];
//	NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [psview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.nikhilp.org/pandr-pdf/privSwim.pdf"]]];
    psview.scalesPageToFit = YES;
	//[psview loadRequest:request];
	[psview setScalesPageToFit:YES];
	[psview addSubview:activityind];
	
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
                                         [UIImage imageNamed:@"reload8.png"],
                                         [UIImage imageNamed:@"reload9.png"],
                                         [UIImage imageNamed:@"reload10.png"],
                                         [UIImage imageNamed:@"reload11.png"],
                                         [UIImage imageNamed:@"reload12.png"],
                                         [UIImage imageNamed:@"reload13.png"],
                                         [UIImage imageNamed:@"reload14.png"],
                                         [UIImage imageNamed:@"reload15.png"],
                                         [UIImage imageNamed:@"reload16.png"],
                                         [UIImage imageNamed:@"reload17.png"],
                                         [UIImage imageNamed:@"reload18.png"],
                                         [UIImage imageNamed:@"reload19.png"],
                                         [UIImage imageNamed:@"reload20.png"],
                                         [UIImage imageNamed:@"reload21.png"],
                                         [UIImage imageNamed:@"reload22.png"],
                                         [UIImage imageNamed:@"reload23.png"],
                                         [UIImage imageNamed:@"reload24.png"],
                                         [UIImage imageNamed:@"reload25.png"],
                                         [UIImage imageNamed:@"reload26.png"],
                                         [UIImage imageNamed:@"reload27.png"],
                                         [UIImage imageNamed:@"reload28.png"],
                                         [UIImage imageNamed:@"reload29.png"],nil];
    activityImageView.alpha = 1.0;
    activityImageView.animationDuration = 1.0;
    
    activityImageView.frame = CGRectMake(-8, 0, 50, 50);
    [activityImageView startAnimating];
    [activityind addSubview:activityImageView];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
	if (!psview.loading)
		[activityind stopAnimating];
	else
		[activityind startAnimating];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
