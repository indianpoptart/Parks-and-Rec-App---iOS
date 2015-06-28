//
//  NPAppDelegate.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "NPAppDelegate.h"

@implementation NPAppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"gradient2.png"]]];
    return YES;
}
-(IBAction)callPhone:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://2034312755"]];
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    // hide main window
    
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    // bring main window back
    // grab a reference to our coloured view
    // grab a reference to our coloured view
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
