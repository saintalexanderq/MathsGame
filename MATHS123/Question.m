//
//  Question.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init {
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(90)+10;
        _rightValue = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"What is %ld + %ld?\n", _leftValue, _rightValue];
        _answer = _leftValue + _rightValue;
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

-(void)generateQuestion {}



@end
