//
//  main.m
//  Palindrome-2
//
//  Created by Cenker Demir on 6/9/16.
//  Copyright © 2016 Cenker Demir. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL palindromeFinder(char *wordToCheck) {
    NSString *word = [NSString stringWithUTF8String:wordToCheck];
    NSUInteger wordSize = [word length];
    
    for (int i=0 ; i<wordSize; i++) {
            NSLog(@"%c : %c",wordToCheck[i], wordToCheck[wordSize-1-i]);
            if (wordToCheck[i] != wordToCheck[wordSize-1-i]) {
                return NO;
            }
    }
    return YES;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (palindromeFinder("racecar")) {
            NSLog(@"it is a palindrome");
        }
        else {
            NSLog(@"sorry, it is not a palindrome");
        }
    }
    return 0;
}

