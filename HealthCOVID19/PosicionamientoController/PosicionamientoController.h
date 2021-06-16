//
//  PosicionamientoController.h
//  HealthCOVID19
//
//  Created by Emili Marques on 03/04/2020.
//  Copyright © 2020 appdevelopment.es. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


NS_ASSUME_NONNULL_BEGIN

@interface PosicionamientoController : NSObject <CLLocationManagerDelegate> {
CLLocationManager *locationManager;
}

@property (nonatomic, retain) CLLocationManager *locationManager;

- (void)locationManager:(CLLocationManager *)manager
didUpdateToLocation:(CLLocation *)newLocation
fromLocation:(CLLocation *)oldLocation;

- (void)locationManager:(CLLocationManager *)manager
didFailWithError:(NSError *)error;

@end


NS_ASSUME_NONNULL_END
