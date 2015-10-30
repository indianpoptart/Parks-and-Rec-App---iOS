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
	[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"gradient2.png"]]];
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    
    [alertview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://nikhilp.org/alert.txt"]]];
    alertview.scalesPageToFit = YES;
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
}

-(void)loading {
    if (!alertview.loading){
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        [activityind stopAnimating];
    }
    else{
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        [activityind startAnimating];
    }
}
-(void)check3DTouch {
    // register for 3D touch if available
    if( self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        
        [self registerForPreviewingWithDelegate:(id)self sourceView:self.view];
        NSLog(@"3D Touch is available!");
        
        //no need for alternate
        self.longPress.enabled = NO;
    }
    else {
        NSLog(@"3D Touch is not available on this device.");
        
        //handle a 3D Touch alternative (long gesture recognizer)
        self.longPress.enabled = YES;
    }
    
}
- (void)didReceiveMemoryWarning {
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


@end
