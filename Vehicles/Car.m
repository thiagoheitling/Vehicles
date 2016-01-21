//
//  Car.m
//  Vehicles
//
//  Created by Thiago Heitling on 2016-01-21.
//  Copyright © 2016 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)init
{
    if (self = [super init]) {
        // Since all cars have four wheels, we can safely set this for every initialized instance
        // of a car.
        self.numberOfWheels = 4;
    }
    return self;
}

#pragma mark - Private method implementations
- (NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

#pragma mark - Superclass Overrides
- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

- (NSString *)makeNoise
{
    return @"Beep beep!";
}

@end
