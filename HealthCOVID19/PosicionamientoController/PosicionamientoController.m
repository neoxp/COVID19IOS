//
//  PosicionamientoController.m
//  HealthCOVID19
//
//  Created by Emili Marques on 03/04/2020.
//  Copyright © 2020 appdevelopment.es. All rights reserved.
//

#import "PosicionamientoController.h"
#import <CoreLocation/CoreLocation.h>

@implementation PosicionamientoController
@synthesize locationManager;

- (id) init {
self = [super init];
if (self != nil) {
self.locationManager = [[[CLLocationManager alloc] init] autoContentAccessingProxy];
self.locationManager.delegate = self;
}
return self;
}

- (void)locationManager:(CLLocationManager *)manager
didUpdateToLocation:(CLLocation *)newLocation
fromLocation:(CLLocation *)oldLocation {
NSLog(@"Location: %@", [newLocation description]);
}

- (void)locationManager:(CLLocationManager *)manager
didFailWithError:(NSError *)error {
NSLog(@"Error: %@", [error description]);
}

- (void)dealloc {
[self.locationManager autoContentAccessingProxy];
[super autoContentAccessingProxy];
}

@end

