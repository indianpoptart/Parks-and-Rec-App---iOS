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

@interface NPAgendaViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end

@implementation NPAgendaViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	[webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.ridgefieldparksandrec.org/agenda"]]];
	[webview addSubview:activityind];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0)
											 target:self
										   selector:@selector(loading)
										   userInfo:nil
											repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
	if (!webview.loading)
		[activityind stopAnimating];
	else
		[activityind startAnimating];
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
	[searchBar resignFirstResponder];
	[webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString         stringWithFormat:@"http://%@",searchBar.text]]]];
	[webview addSubview:activityind];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
	searchBar.text = nil;
	[searchBar resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
