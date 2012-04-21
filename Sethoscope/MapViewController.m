#import "MapViewController.h"
#import "MapViewAnnotation.h"

@implementation MapViewController

@synthesize mapView;

// When the view loads
- (void)viewDidLoad
{
	// Set some coordinates for our position (Buckingham Palace!)
	CLLocationCoordinate2D location;	
	MapViewAnnotation *newAnnotation;
	
	// Add the annotation to our map view
	location.latitude = (double) 37.545146;
	location.longitude = (double) -77.4403859;
	newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Standard Drug" andCoordinate:location];
	[self.mapView addAnnotation:newAnnotation];
	[newAnnotation release];

	// Add another annotation to our map view
	location.latitude = (double) 37.5440306;
	location.longitude = (double) -77.43947379;
	newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Central National Bank" andCoordinate:location];
	[self.mapView addAnnotation:newAnnotation];
	[newAnnotation release];	
	
	// Add another annotation to our map view
	location.latitude = (double) 37.5437678;
	location.longitude = (double) -77.43844360000003;
	newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Hot Nails" andCoordinate:location];
	[self.mapView addAnnotation:newAnnotation];
	[newAnnotation release];	
	
	// Add another annotation to our map view
	location.latitude = (double) 37.541784;
	location.longitude = (double) -77.437821699;
	newAnnotation = [[MapViewAnnotation alloc] initWithTitle:@"Ardley" andCoordinate:location];
	[self.mapView addAnnotation:newAnnotation];
	[newAnnotation release];	
	
	
	[self.mapView setShowsUserLocation:YES];

}

// When a map annotation point is added, zoom to it (1500 range)
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
	
	MKAnnotationView *annotationView = [views objectAtIndex:0];
	id <MKAnnotation> mp = [annotationView annotation];
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 1500, 1500);
	[mv setRegion:region animated:YES];
	[mv selectAnnotation:mp animated:YES];
}

// hope this works
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
	static NSString *identifier = @"MyLocation";
	if ([annotation isKindOfClass:[MapViewAnnotation class]]) {
		
        MKPinAnnotationView *annotationView = (MKPinAnnotationView *) [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        if (annotationView == nil) {
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        } else {
            annotationView.annotation = annotation;
        }
		
        annotationView.enabled = YES;
        annotationView.canShowCallout = YES;
		
        return annotationView;
    }
	
    return nil;    
}

// Received memory warning
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// If the view unloads, release the map view
- (void)viewDidUnload {
	[super viewDidUnload];
	[mapView release];
	mapView = nil;
}

// Deallocations
- (void)dealloc {
	[mapView release];
    [super dealloc];
}

@end