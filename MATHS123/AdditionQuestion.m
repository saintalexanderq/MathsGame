//
//  AdditionQuestion.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init {
    self = [super init];
    if (self) {
        _num1 = arc4random_uniform(90)+10;
        _num2 = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"What is %ld + %ld?\n", _num1, _num2];
        _answer = _num1 + _num2;
        _startTime = [NSDate date];
        
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    return [self.endTime timeIntervalSinceDate:self.startTime];
    
}



@end
