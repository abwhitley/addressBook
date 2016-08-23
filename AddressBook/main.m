//
//  main.m
//  AddressBook
//
//  Created by Austins Work on 8/22/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "UserInput.h"

NSMutableString *getStringFromUser(int nameLength, NSMutableString *promt);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *firstPerson = [Person new];
        Person *secondPerson = [Person new];
        
        NSArray *firstAddress = addressOne();
        firstPerson.name = firstAddress[0];
        firstPerson.emailAddress = firstAddress[1];
        firstPerson.buddy = firstAddress[2];
        NSLog(@"%@", firstAddress);
        
        NSArray *secondAddress = addressTwo();
        secondPerson.name = secondAddress[0];
        secondPerson.emailAddress = secondAddress[1];
        secondPerson.buddy = secondAddress[2];
        NSLog(@"%@", secondAddress);
        
        NSDictionary *addressBook = [NSDictionary dictionaryWithObjectsAndKeys:
                     @[firstAddress], @"First Entry",
                     @[secondAddress], @"Second Entry",nil];

            

            
        
          return 0;
}
}
