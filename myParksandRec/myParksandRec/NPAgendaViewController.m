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
@end

@implementation NPAgendaViewController


- (void)viewDidLoad {
	[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.png"]]];
	[super viewDidLoad];
	
	// Do any additional setup after loading the view, typically from a nib.
	
	[webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.ridgefieldparksandrec.org/agenda"]]];
	webview.scalesPageToFit = YES;
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
