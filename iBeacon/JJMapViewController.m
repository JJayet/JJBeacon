//
//  JJFirstViewController.m
//  iBeacon
//
//  Created by Jonathan Jayet on 22/01/2014.
//  Copyright (c) 2014 JJ. All rights reserved.
//

#import "JJMapViewController.h"

@interface JJMapViewController ()

@end

@implementation JJMapViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)aMapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [aMapView setRegion:region animated:YES];
}

@end
