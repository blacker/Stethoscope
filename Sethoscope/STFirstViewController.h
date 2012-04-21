//
//  STFirstViewController.h
//  Sethoscope
//
//  Created by Benjamin Lacker on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import "STLocation.h"

@interface STFirstViewController : UIViewController
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) NSMutableArray *locations;

@end
