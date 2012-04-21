//
//  STLocation.h
//  Sethoscope
//
//  Created by Shane Zilinskas on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface STLocation : NSObject <MKAnnotation>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *subTitle;
@property (strong, nonatomic) UIImage *image;

@end
