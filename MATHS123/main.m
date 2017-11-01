//
//  main.m
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "QuestionManager.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

    int main(int argc, const char * argv[]) {
        @autoreleasepool {
            
            ScoreKeeper *scoreKept = [[ScoreKeeper alloc] init];
            InputHandler *inputHandler = [[InputHandler alloc] init];
            QuestionManager *questionManager = [[QuestionManager alloc] init];
            QuestionManager *timedQuestion = [[QuestionManager alloc]init];
            
            BOOL gameOn = YES;
            while (gameOn) {
                
                AdditionQuestion *first = [[AdditionQuestion alloc] init];
                
                NSLog(@"%@", first.question);
                [questionManager.questions addObject:first];
                NSString *userInput = [inputHandler getAnswer];
                //            NSLog(@"
                NSLog(@"%@", questionManager.timeOutput);
                NSLog(@"Your answer is %@", userInput);
                NSInteger resultInt = [userInput intValue];
                
                if (resultInt == first.answer) {
                    NSLog(@"Correct!");
                    scoreKept.rightCount+=1;
                } else if ([userInput  isEqual: @"quit"]) {
                    gameOn = NO;
                } else {
                    NSLog(@"Incorrect!");
                    scoreKept.wrongCount+=1;
                }
                NSLog(@"Current right answers %ld. Current wrong answers: %ld.", scoreKept.rightCount, scoreKept.wrongCount);
                
            }
            return 0;
        }
    }
