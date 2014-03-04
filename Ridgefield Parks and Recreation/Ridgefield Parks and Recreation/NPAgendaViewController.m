//
//  NPAgendaViewController.m
//  Ridgefield Parks and Recreation
//
//  Copyright (c) 2014 NikhilP. All rights reserved.
//
//  This is the agenda view controller that manages the agenda page on the main website

#import "NPAgendaViewController.h"

// address to the source code on GitHub
#define SOURCE_CODE_ADDRESS @"http://www.ridgefieldparksandrec.org/agenda"

@interface PWCodeViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end

@implementation PWCodeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
	NSURL *websiteUrl = [NSURL URLWithString:SOURCE_CODE_ADDRESS];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webView loadRequest:urlRequest];
}

@end
