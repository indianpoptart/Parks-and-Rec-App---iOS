//
//  PWCodeViewController.m
//  Pocket Weather
//
//  Copyright (c) 2014 NikhilP. All rights reserved.
//
//  This is the code view controller that manages source code page

#import "PWCodeViewController.h"

// address to the source code on GitHub
#define SOURCE_CODE_ADDRESS @"http://www.ridgefieldparksandrec.org/agenda"

@interface PWCodeViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation PWCodeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
	NSURL *websiteUrl = [NSURL URLWithString:SOURCE_CODE_ADDRESS];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webView loadRequest:urlRequest];
}

@end
