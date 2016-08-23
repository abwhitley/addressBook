//
//  UserInput.h
//  AddressBook
//
//  Created by Austins Work on 8/22/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#ifndef UserInput_h
#define UserInput_h
NSString *getStringFromUser(int nameLength, NSString *prompt);

NSMutableString *clearString(NSString *name);

NSString *getFriendFromUser();

NSArray *addressOne();
NSArray *addressTwo();

#endif /* UserInput_h */
