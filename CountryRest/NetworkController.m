//
//  NetworkController.m
//  CountryRest
//
//  Created by Dalton on 5/7/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (AFHTTPSessionManager *)api {
    
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://www.restcountries.eu/rest/v1/"]];
        
        api.responseSerializer = [AFJSONResponseSerializer serializer];
        
    });
    return api;
    
}



@end
