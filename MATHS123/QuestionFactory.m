//
//  QuestionFactory.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory



-(Question *)generateRandomQuestion {
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"MultiplicationQuestion", @"DivisionQuestion", @"SubtractionQuestion"];
    int indexRandom = arc4random_uniform(3);
    NSString *randomQuestionType = questionSubclassNames [indexRandom];
    Question *randomQuestion = [[NSClassFromString(randomQuestionType)alloc]init];
    
    return randomQuestion;
    
    
}

@end
