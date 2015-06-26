//
//  NPAlertController.m
//  Ridgefield Parks and Recreation
//
//  Copyright (c) 2014 NikhilP. All rights reserved.
//
//  This is the agenda view controller that manages the agenda page on the main website

#import "NPAlertController.h"

// address to the source code on GitHub
#define SOURCE_CODE_ADDRESS @"https://nikhilp.org/test.txt"

@interface NPAlertController ()
@property(weak, nonatomic) IBOutlet UIWebView *alertView;
@end

@implementation NPAlertController

- (void)viewDidLoad {
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"gradient2.png"]]];
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [alertview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://nikhilp.org/test.txt"]]];
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
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
    if (!alertview.loading){
        [activityind stopAnimating];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    }
    else{
        [activityind startAnimating];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    }
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [searchBar resignFirstResponder];
    [alertview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@",searchBar.text]]]];
    [alertview addSubview:activityind];
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
