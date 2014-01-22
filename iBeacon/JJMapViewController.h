//
//  JJFirstViewController.h
//  iBeacon
//
//  Created by Jonathan Jayet on 22/01/2014.
//  Copyright (c) 2014 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface JJMapViewController : UIViewController <MKMapViewDelegate> {
    MKMapView *mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
