//
//  QuestionManager.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)timeOutput {
    NSInteger time = 0;
    NSInteger averageTime = 0;
    for (AdditionQuestion *additionQuestion in self.questions) {
        time += additionQuestion.answerTime;
    }
    
    averageTime = time / [self.questions count];
    
    return [NSString stringWithFormat:@"Total time: %ld. Average time: %ld.\n", time, averageTime];
}








@end
