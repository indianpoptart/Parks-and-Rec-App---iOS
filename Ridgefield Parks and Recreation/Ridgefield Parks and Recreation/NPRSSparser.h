//
//  NPRSSparser.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 12/30/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NPRSSparser : UIViewController{
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://nikhilp.org/alert.xml"];
    NSXMLParser *xmlparser = [[NSXMLParser alloc] initWithContentsOfURL:url];

    rssParser *parser = [[rssParser alloc] initXMLParser];
    
    [xmlparser setDelegate:parser];

    BOOL success = [xmlparser parse];

    if(success){
        NSLog(@"No Errors");
    }
    else{
        NSLog(@"Error Error Error!!!");
    }
}
    
@end