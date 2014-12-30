//
//  NPRSSparser.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 12/30/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NPAlertController, AppDelegate;

@interface rssParser : NSObject <NSXMLParserDelegate>{
    
    NPAlertController *alert;
    AppDelegate *appdelegate;
    
    NSMutableString *curElem;
    
}

@property (nonatomic, retain) NPAlertController *alert;
@property (nonatomic, retain) AppDelegate *appdelegate;
@property (nonatomic, retain) NSMutableString *curElem;

- (rssParser*) initXMLParser;

@end