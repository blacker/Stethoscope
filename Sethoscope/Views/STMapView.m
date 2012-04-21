//
//  STMapView.m
//  Sethoscope
//
//  Created by Shane Zilinskas on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "STMapView.h"

@implementation STMapView

- (void) showDetails: (id) accessory{
    NSLog(@"Showing details");
    STLocation *location = [self.locations objectAtIndex:accessory.tag]
// push the new view controller with that location
}
#pragma mark - MKMap
- (MKAnnotationView *)mapView:(MKMapView *)theMapView viewForAnnotation:(id) location{
    // if it's the user location, just return nil.
    if ([location isKindOfClass:[MKUserLocation class]])
        return nil;
    
    static NSString*  MapAnnotation = @"mapAnnotation";
    MKPinAnnotationView* pinView = (MKPinAnnotationView *) [self dequeueReusableAnnotationViewWithIdentifier:MapAnnotation];
    if(!pinView){
        MKPinAnnotationView *customPinView = [[MKPinAnnotationView alloc] initWithAnnotation:location reuseIdentifier:MapAnnotation];
        customPinView.pinColor = MKPinAnnotationColorRed;
        customPinView.animatesDrop = YES;
        customPinView.canShowCallout = YES;
        
        UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        
        // @todo link to firstcontroller as delegate
        rightButton.tag = [self.locations indexOfObject: location];
        [rightButton addTarget:self
                        action:@selector(showDetails:)
              forControlEvents:UIControlEventTouchUpInside];
        rightButton.tag =  [[self annotations] indexOfObject:location];
        customPinView.rightCalloutAccessoryView = rightButton;
        
        return customPinView;
    }
    else{
        pinView.annotation = location;
    }
    return pinView; 
}
@end
