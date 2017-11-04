//
//  AdditionQuestion.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion {
    self.question = [NSString stringWithFormat:@"What is %ld + %ld?", self.leftValue, self.rightValue];
    self.answer = self.leftValue + self.rightValue;
}


@end
