//
//  STFirstViewController.m
//  Sethoscope
//
//  Created by Benjamin Lacker on 4/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "STFirstViewController.h"

@implementation STFirstViewController
@synthesize mapView;
@synthesize locations;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"initializing with nib name");
        UIImage *image = [UIImage imageNamed:@"my_cool_image"];
        self.locations = [[NSMutableArray alloc] initWithObjects:
                          [[STLocation alloc] initWithName:@"The Byrd" 
                                                  subTitle:@"Movies" 
                                                     image:image 
                                                  location:CLLocationCoordinate2DMake((double)37.552794, (double)-77.477968 )],
                          nil];
        
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.mapView setShowsUserLocation:YES];
    [self.mapView addAnnotations:self.locations];
    NSLog(@"add self.locations as annotations");
    [self.mapView setDelegate:self.mapView];
    [self.mapView setZoomEnabled:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 37.552794;
    zoomLocation.longitude= -77.477968;
    
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 800, 800);
    // 3
    MKCoordinateRegion adjustedRegion = [mapView regionThatFits:viewRegion];                
    // 4
    [mapView setRegion:adjustedRegion animated:YES]; 
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
