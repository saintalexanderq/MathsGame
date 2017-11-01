//
//  AdditionQuestion.h
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, copy) NSString *question;

@property (nonatomic, assign) NSInteger num1;
@property (nonatomic, assign) NSInteger num2;

// Maths 2 start
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

-(NSInteger)answer;

-(NSTimeInterval)answerTime;




-(instancetype)init;

@end
