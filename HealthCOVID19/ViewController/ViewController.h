//
//  ViewController.h
//  HealthCOVID19
//
//  Created by Emili Marques on 03/04/2020.
//  Copyright © 2020 appdevelopment.es. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
    IBOutlet MKMapView *Localizacion;
    CLLocationManager *locationManager;
            CLLocation *bestLocation;
            NSUInteger totalCounter;
            NSUInteger bestCounter;
    
    double latitude_UserLocation, longitude_UserLocation;
}
@property (strong, nonatomic) IBOutlet UILabel *gpsCoordinatesLbl;
@property (strong, nonatomic) IBOutlet UILabel *gpsOldCoordinatesLbl;
@property (strong, nonatomic) IBOutlet UILabel *gpsInitialCoordinatesLbl;
@property (strong, nonatomic) IBOutlet UILabel *totalCounterLbl;
@property (strong, nonatomic) IBOutlet UILabel *bestCounterLbl;
@property (nonatomic, retain) IBOutlet MKMapView *Localizacion;
@property (nonatomic, retain) IBOutlet UIImage *pinImagen;
@property (strong, nonatomic)  CLLocationManager *locationManager;
@property(nonatomic) MKPinAnnotationColor pinColor;
@end

