//
//  Contributer.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 4/18/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

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