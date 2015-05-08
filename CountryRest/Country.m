//
//  Country.m
//  CountryRest
//
//  Created by Dalton on 5/7/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Country.h"

@implementation Country

static NSString * const nameKey = @"name";
static NSString * const capitalKey = @"capital";
static NSString * const populationKey = @"population";
static NSString * const regionKey = @"region";


-(id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        self.name = dictionary[nameKey];
        self.capital = dictionary[capitalKey];
        self.population = dictionary[populationKey];
        self.region = dictionary[regionKey];
        
    }
    
    return self;
    
    
}


@end
