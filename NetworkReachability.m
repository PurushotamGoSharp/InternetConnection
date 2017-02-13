//
//  NetworkReachability.m
//  InternetConnectionAvilability
//
//  Created by vmoksha mobility on 2/13/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import "NetworkReachability.h"
#import "Reachability.h"
#import "AppDelegate.h"
@implementation NetworkReachability

/* Checking Network connection method */
-(BOOL)checkNetworkReachability
{
    Reachability *checkNetwork=[Reachability reachabilityForInternetConnection];
    NetworkStatus *networkStatus=[checkNetwork currentReachabilityStatus];
    
     /* Checking Network status */
    if (networkStatus==NotReachable)
    {
 
        /* If Network status is not reachable,then printing No internet connection */
        NSLog(@"No Internet connection");
        self.isNetwork=NO;
    }
    else
    {
        /* If Network status is reachable,then printing internet connection */
        NSLog(@"Internet connection is avilable");
        self.isNetwork=YES;
    }
    
    /* Return boolean value for Network */
    return self.isNetwork;
}


@end
