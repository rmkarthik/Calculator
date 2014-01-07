//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Karthikeyan Ramanathan on 24/12/13.
//  Copyright (c) 2013 Karthikeyan Ramanathan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void) pushOperand:(double)operand;
- (double) performOperation:(NSString *) operation;

@property (readonly) id program;

+ (double) runProgram:(id)program;
+ (NSString *) descriptionOfTheProgram:(id)program;

@end
