//
//  Contributor.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 3/1/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "Contributor.h"

// Interface
@interface Contributor : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageUrl;

@end

// Implementation
@implementation Contributor

@synthesize name = _name;
@synthesize imageUrl = _imageUrl;

@end