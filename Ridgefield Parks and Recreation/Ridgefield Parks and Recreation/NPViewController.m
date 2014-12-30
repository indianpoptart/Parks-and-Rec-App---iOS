//
//  NPViewController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "NPViewController.h"
#import "NPAgendaViewController.h"

@interface NPViewController ()

@end

@implementation NPViewController
- (void)viewDidLoad
{
	[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.png"]]];
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)makePhoneCall:(id)sender{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:2034312755"]];
}
-(IBAction)openSchedules:(id)sender{
	[super viewDidLoad];
}
-(IBAction)openAgenda:(id)sender{
	[super viewDidLoad];
}
-(IBAction)alert:(id)sender{
    NSURL *url = [NSURL URLWithString:@"http://ridgefieldparksandrec.org"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    /* set headers, etc. on request if needed */
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:NULL];
    NSString *html = [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]];
    NSScanner *scanner = [NSScanner scannerWithString:html];
    NSString *token = nil;
    [scanner scanUpToString:@"<h1>" intoString:NULL];
    [scanner scanUpToString:@"</h1>" intoString:&token];
}

@end
