//
//  CRViewController.m
//  CountryRest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"
#import "CountryController.h"


@interface CRViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchField;
@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryCapitalLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryPopulationLabel;

@end

@implementation CRViewController


- (void)viewDidLoad
{
    
    self.searchField.delegate = self;
    
    
}



- (IBAction)searchButtonTapped:(id)sender {
    
    [[CountryController sharedInstance] getCountriesWithName:[self.searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] completion:^(NSArray *countries) {
        Country *country = countries.firstObject;
        
        self.countryNameLabel.text = country.name;
        self.countryCapitalLabel.text = country.capital;
        self.countryPopulationLabel.text = [NSString stringWithFormat:@"%@", country.population];
        
    }];
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
    
}



@end
