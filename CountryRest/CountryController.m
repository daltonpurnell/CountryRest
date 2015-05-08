//
//  CountryController.m
//  CountryRest
//
//  Created by Dalton on 5/7/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CountryController.h"
#import "NetworkController.h"

@implementation CountryController



+ (CountryController *)sharedInstance {
    static CountryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CountryController alloc] init];
    });

    return sharedInstance;
}



- (void)getCountriesWithName:(NSString *)name completion:(void (^)(NSArray *))completion {
    
    NSString *path = [NSString stringWithFormat:@"name/%@", name];
    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSArray *responseCountries = responseObject;
        
        
        // create an array and for every country object returned to us, we put it into the array
        NSMutableArray *countries = [NSMutableArray new];
        for (NSDictionary *dictionary in responseCountries) {
            [countries addObject:[[Country alloc] initWithDictionary:dictionary]];
            
        }
        
        completion(countries);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(nil);
        
    }];
}


@end
