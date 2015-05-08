//
//  Country.h
//  CountryRest
//
//  Created by Dalton on 5/7/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *capital;
@property (nonatomic, strong) NSNumber *population;
@property (nonatomic, strong) NSString *region;


-(id)initWithDictionary:(NSDictionary *)dictionary;


@end
