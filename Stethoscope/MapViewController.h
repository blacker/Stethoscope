//
//  MapViewController.h
//  Map
//
//  Created by Benjamin Lacker on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate> {
	
	MKMapView *mapView;
	
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end

