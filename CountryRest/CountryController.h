//
//  CountryController.h
//  CountryRest
//
//  Created by Dalton on 5/7/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@interface CountryController : NSObject


-(void)getCountriesWithName: (NSString *) name completion:(void(^)(NSArray *countries))completion;

+ (CountryController *)sharedInstance;


@end
