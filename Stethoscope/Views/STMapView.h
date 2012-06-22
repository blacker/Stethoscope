//
//  STMapView.h
//  Sethoscope
//
//  Created by Shane Zilinskas on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "STLocation.h"

@interface STMapView : MKMapView

@property (strong, nonatomic) NSMutableArray *locations;

@end
