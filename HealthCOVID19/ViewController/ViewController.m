//
//  ViewController.m
//  HealthCOVID19
//
//  Created by Emili Marques on 03/04/2020.
//  Copyright © 2020 appdevelopment.es. All rights reserved.
//


#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "GpsTest.h"
#import <CoreLocation/CoreLocation.h>

#define CENTER_LATITUDE 22.11111
#define CENTER_LONGITUDE -23.99292 


@implementation ViewController
@synthesize Localizacion;
@synthesize gpsCoordinatesLbl = _gpsCoordinatesLbl;
@synthesize gpsOldCoordinatesLbl = _gpsOldCoordinatesLbl;
@synthesize gpsInitialCoordinatesLbl = _gpsInitialCoordinatesLbl;
@synthesize locationManager,pinImagen;
 
- (void)viewDidLoad {
    [super viewDidLoad];

       [self loadUserLocation];
       [self updatecolorschangecovid];

}
 
#pragma change colors covid-19 green , yellow , red

-(void)updatecolorschangecovid {
    
    
            if (self.pinColor== UIColor.redColor){
                locationManager = [[CLLocationManager alloc] init];
                locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                locationManager.delegate = self;
             
                [locationManager startUpdatingLocation];
             
                _gpsInitialCoordinatesLbl.text = [locationManager.location description];
                NSLog(@"Posición inicial: %@", locationManager.location);

                
                Localizacion.showsUserLocation=TRUE;
                   self.locationManager = [[CLLocationManager alloc]init];
                    self.locationManager.delegate = self;
                    self.locationManager.distanceFilter = kCLDistanceFilterNone;
                    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;

                    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
                        [self.locationManager requestWhenInUseAuthorization];
                    }
                    [self.locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                   [locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;

                   if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
                       [self.locationManager requestWhenInUseAuthorization];

                   [locationManager startUpdatingLocation];
            
                
                   [self loadUserLocation];
               
                }
               
            else if (self.pinColor==pinImagen==UIColor.yellowColor){
                locationManager = [[CLLocationManager alloc] init];
                locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                locationManager.delegate = self;
             
                [locationManager startUpdatingLocation];
             
                _gpsInitialCoordinatesLbl.text = [locationManager.location description];
                NSLog(@"Posición inicial: %@", locationManager.location);

                
                Localizacion.showsUserLocation=TRUE;
                   self.locationManager = [[CLLocationManager alloc]init];
                    self.locationManager.delegate = self;
                    self.locationManager.distanceFilter = kCLDistanceFilterNone;
                    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;

                    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
                        [self.locationManager requestWhenInUseAuthorization];
                    }
                    [self.locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                   [locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;

                   if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
                       [self.locationManager requestWhenInUseAuthorization];

                   [locationManager startUpdatingLocation];
                   
                   [self loadUserLocation];
                 }
            
            else if (self.pinColor== [UIColor greenColor]){
                locationManager = [[CLLocationManager alloc] init];
                locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                locationManager.delegate = self;
             
                [locationManager startUpdatingLocation];
             
                _gpsInitialCoordinatesLbl.text = [locationManager.location description];
                NSLog(@"Posición inicial: %@", locationManager.location);

                
                Localizacion.showsUserLocation=TRUE;
                   self.locationManager = [[CLLocationManager alloc]init];
                    self.locationManager.delegate = self;
                    self.locationManager.distanceFilter = kCLDistanceFilterNone;
                    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;

                    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
                        [self.locationManager requestWhenInUseAuthorization];
                    }
                    [self.locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;
                   [locationManager startUpdatingLocation];
                   
                   locationManager = [[CLLocationManager alloc] init];
                   locationManager.delegate = self;
                   locationManager.distanceFilter = kCLDistanceFilterNone;
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest;

                   if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
                       [self.locationManager requestWhenInUseAuthorization];

                   [locationManager startUpdatingLocation];
                   
                   [self loadUserLocation];
                 }

}

- (void)viewDidUnload {
    [locationManager stopUpdatingLocation];
 
    locationManager = nil;
    [self setGpsCoordinatesLbl:nil];
    [self setGpsOldCoordinatesLbl:nil];
    [self setGpsInitialCoordinatesLbl:nil];
    [self updatecolorschangecovid];
 
    [super viewDidUnload];
}
 
#pragma mark CLLocationManagerDelegate
 
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    _gpsCoordinatesLbl.text = [newLocation description];
    _gpsOldCoordinatesLbl.text = [oldLocation description];
    NSLog(@"Posición anterior: %@   Posición actual: %@", oldLocation, newLocation);
}
 
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    _gpsCoordinatesLbl.text = [manager.location description];
    NSLog(@"Error en el servicio de localización: %@", error);
}


- (void)createBestLocationAnnotation {
    MKPointAnnotation *currentLocationPin = [[MKPointAnnotation alloc] init];
    currentLocationPin.coordinate = bestLocation.coordinate;
    currentLocationPin.title = NSLocalizedString(@"Actual position", @"Actual position");
    [Localizacion addAnnotation:currentLocationPin];
}
 
 
#pragma mark - MKMapViewDelegate
 

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    MKAnnotationView *pin = [mapView dequeueReusableAnnotationViewWithIdentifier:@"currentLocation"];
    
    
    if (pinImagen) {
        MKPinAnnotationView *pinAnnotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentLocation"];
        pinAnnotationView.annotation = annotation;
        pinAnnotationView.animatesDrop = YES;
        pinAnnotationView.canShowCallout = YES;
        pin.rightCalloutAccessoryView = pinAnnotationView;
        pin = pinAnnotationView;
        pinAnnotationView.image = [UIImage imageNamed:@"red.png"];
        
    }
    
    else if (pinImagen) {
        MKPinAnnotationView *pinAnnotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentLocation"];
        pinAnnotationView.annotation = annotation;
        pinAnnotationView.animatesDrop = YES;
        pinAnnotationView.canShowCallout = YES;
        pin = pinAnnotationView;
        pinAnnotationView.image = [UIImage imageNamed:@"Yellow.png"];
    }
    
    else if (pinImagen) {
        MKPinAnnotationView *pinAnnotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentLocation"];
        pinAnnotationView.annotation = annotation;
        pinAnnotationView.animatesDrop = YES;
        pinAnnotationView.canShowCallout = YES;
        pin = pinAnnotationView;
        pinAnnotationView.image = [UIImage imageNamed:@"green.png"];;
    
    }

    return pinImagen;

}


- (void) loadUserLocation
{
locationManager = [[CLLocationManager alloc] init];
locationManager.delegate = self;
locationManager.distanceFilter = kCLDistanceFilterNone;
locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
[locationManager requestWhenInUseAuthorization];
}
[locationManager startUpdatingLocation];
}


- (void)locationManager:(CLLocationManager *)manager
didUpdateLocations:(NSArray *)locations __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_6_0)
{
CLLocation *newLocation = [locations objectAtIndex:0];
latitude_UserLocation = newLocation.coordinate.latitude;
longitude_UserLocation = newLocation.coordinate.longitude;
[locationManager stopUpdatingLocation];
[self Localizacion];
}


- (void)mapView:(MKMapView *)aMapView didUpdateUserLocation:(MKUserLocation *)aUserLocation {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = aUserLocation.coordinate.latitude;
    location.longitude = aUserLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [aMapView setRegion:region animated:YES];
}


-(IBAction)btnSOS:(id)sender{
    
    NSString *phoneNumber = @"tel://112";
    NSURL *cleanPhoneNumber = [NSURL URLWithString:[NSString stringWithFormat:@"%@", phoneNumber]];
    [[UIApplication sharedApplication] openURL:cleanPhoneNumber];
}


-(IBAction)btnInformation:(id)sender{
       
      UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert COVID-19" message:@"Please if you are infected by COVID-19 press the SOS button to say that you are infected by this virus." preferredStyle:UIAlertControllerStyleAlert];

          UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                                  //button click event
                              }];
          UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
          [alert addAction:cancel];
          [alert addAction:ok];
          [self presentViewController:alert animated:YES completion:nil];
       
}


@end

