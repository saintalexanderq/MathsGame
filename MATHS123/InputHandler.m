//
//  InputHandler.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getAnswer {
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *userAnswer = [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userAnswer;
    
}


@end
