//
//  MapViewAnnotation.m
//  Map
//
//  Created by Benjamin Lacker on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewAnnotation.h"

@implementation MapViewAnnotation

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
	[super init];
	title = ttl;
	coordinate = c2d;
	return self;
}

- (void)dealloc {
	[title release];
	[super dealloc];
}

@end