//
//  ViewController.m
//  InternetConnectionAvilability
//
//  Created by vmoksha mobility on 2/13/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import "ViewController.h"
#import "NetworkReachability.h"

@interface ViewController ()
{
    /* Network Reachability Variable declaration */
    NetworkReachability *network;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    /* Checking Network Reachability avilability */
    if (network.checkNetworkReachability)
    {
        
        /* If there is no Network reachability,then show alert */
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error !!"
        message:@"No Internet connection" delegate:self cancelButtonTitle:@"Cancel"
        otherButtonTitles:@"OK", nil];
        
        [alert show];
        

    }
    else
    {
        
        /* If there is Network reachability,then show alert */
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert !!"
        message:@"Device is connected to Internet" delegate:self cancelButtonTitle:@"Cancel"
        otherButtonTitles:@"OK", nil];
        
        [alert show];
        
                    NSLog(@"Internet connection is avilable");
        
    }

  
    }
  
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
