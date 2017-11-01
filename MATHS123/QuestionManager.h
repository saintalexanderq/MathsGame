//
//  QuestionManager.h
//  MATHS123
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

-(NSString*)timeOutput;


@end
