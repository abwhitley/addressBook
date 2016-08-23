//
//  UserInput.m
//  AddressBook
//
//  Created by Austins Work on 8/22/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"

NSMutableString *getStringFromUser(int nameLength, NSString *prompt) {
    
    char *buffer = malloc(sizeof(char) * nameLength);
    
    char *result = NULL;
    while (result != buffer) {
        fpurge(stdin);
        NSLog(@"%@", prompt);
        result = fgets(buffer, nameLength, stdin);
    }
    
    NSString *returnValue = @(buffer);
    
    free(buffer);
    NSMutableString *mutableReturnValue = [returnValue mutableCopy];
    return mutableReturnValue;
}

NSMutableString *clearString(NSString *name){
    
    NSMutableString *mutableName = [name mutableCopy];
    NSRange range;
    range.location = 0;
    range.length = name.length;
    [mutableName deleteCharactersInRange:range];
    return mutableName;


}

NSString *getFriendFromUser(){
    NSString *buddy = getStringFromUser(100, @"Enter your friends name: ");
    return buddy;
    
}

NSArray *addressOne(){
    NSArray *firstPerson = @[
    
    getStringFromUser(100, @"Insert Persons Name: "),
    getStringFromUser(100, @"Insert Persons Email: "),
    getStringFromUser(100, @"Insert Persons Friend: ")
    ];
    
    return firstPerson;
}

NSArray *addressTwo(){
    NSArray *secondPerson = @[
                             
        getStringFromUser(100, @"Insert Persons Name: "),
        getStringFromUser(100, @"Insert Persons Email: "),
        getStringFromUser(100, @"Insert Persons Friend: ")
                             ];
    
    return secondPerson;
}




