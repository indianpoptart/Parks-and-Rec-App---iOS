//
//  NPViewController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "NPViewController.h"
#import "NPAgendaViewController.h"
#import "TFHpple.h"
#import "Contributor.h"

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
-(IBAction)reloadData:(id)sender{
    // 1
    NSURL *tutorialsUrl = [NSURL URLWithString:@"http://www.ridgefieldparksandrec.org/"];
    NSData *tutorialsHtmlData = [NSData dataWithContentsOfURL:tutorialsUrl];
    
    // 2
    TFHpple *tutorialsParser = [TFHpple hppleWithHTMLData:tutorialsHtmlData];
    
    // 3
    NSString *tutorialsXpathQueryString = @"//div[@class='alert']/ul/li/a";
    NSArray *tutorialsNodes = [tutorialsParser searchWithXPathQuery:tutorialsXpathQueryString];
    
    // 4
    NSMutableArray *newTutorials = [[NSMutableArray alloc] initWithCapacity:0];
    for (TFHppleElement *element in tutorialsNodes) {
        // 5
        NPViewController *tutorial = [[NPViewController alloc] init];
        [newTutorials addObject:tutorial];
        
        // 6
        tutorial.title = [[element firstChild] content];
    }
}

@end
