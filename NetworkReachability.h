//
//  NetworkReachability.h
//  InternetConnectionAvilability
//
//  Created by vmoksha mobility on 2/13/17.
//  Copyright © 2017 vmoksha mobility. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkReachability : NSObject

/* Declaration of Network checking Method */
-(BOOL)checkNetworkReachability;
@property(assign,nonatomic)BOOL isNetwork;
@end
