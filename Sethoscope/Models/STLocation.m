//
//  STLocation.m
//  Sethoscope
//
//  Created by Shane Zilinskas on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "STLocation.h"

@implementation STLocation

@synthesize name = _name;
@synthesize subTitle = _subTitle;
@synthesize image = _image;
@synthesize coordinate = _coordinate;

- (id) initWithName: (NSString *) name subTitle:(NSString *) subTitle image: (UIImage *) image location:(CLLocationCoordinate2D) location{
    self = [super init];
    if(self){
        self.name = name;
        self.subTitle = subTitle;
        self.image = image;
        [self setCoordinate: location];
    }
    return self;
}

#pragma mark - Map Kit
-(NSString *) subtitle{
    return self.subTitle;
}

-(NSString *) title{
    return self.name;
}

- (void) setCoordinate:(CLLocationCoordinate2D)newCoordinate{
    _coordinate = newCoordinate;
}

@end
