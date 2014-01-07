//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Karthikeyan Ramanathan on 24/12/13.
//  Copyright (c) 2013 Karthikeyan Ramanathan. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

-(NSMutableArray *)operandStack {
    if(_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void) pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double) popOperand {
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject)[self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double) performOperation:(NSString *) operation
{
    double result = 0;

    if([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([@"*" isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    } else if ([@"/" isEqualToString:operation]) {
        double divisor = [self popOperand];
        if (!divisor) {
            result = [self popOperand] / divisor;
        } else {
            result = 0;
        }
    } else if ([@"-" isEqualToString:operation]) {
        result = [self popOperand] - [self popOperand];
    }
    
    [self pushOperand:result];
    
    return result;
}

@end
