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
#import "STMapView.h"

@interface STFirstViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet STMapView *mapView;

@property (strong, nonatomic) NSMutableArray *locations;

@end
