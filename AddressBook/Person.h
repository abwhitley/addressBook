//
//  Person.h
//  AddressBook
//
//  Created by Austins Work on 8/22/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic, copy)NSString *emailAddress;
@property (nonatomic, copy)NSString *buddy;

@end
