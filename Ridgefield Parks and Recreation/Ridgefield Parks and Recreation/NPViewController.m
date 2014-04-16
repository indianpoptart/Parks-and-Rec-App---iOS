//
//  NPViewController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "NPViewController.h"

@interface NPViewController ()

@end

@implementation NPViewController

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor clearColor]];
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)makePhoneCall:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://2034312755"]];
}
-(IBAction)openSchedules:(id)sender{
    
}
-(IBAction)openAgenda:(id)sender{
    
}

@end
