//
//  DemoFunction.m
//  ObjectiveExamples
//
//  Created by Mieu Mi on 10/15/15.
//  Copyright © 2015 Thong. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"Hello World"];
    [self sayFirstname:@"Thong" andLastname:@"Nguyen"];
    float tempDegree = 30.0;
    NSString* result=[NSString stringWithFormat:@"%2.1f degree equal to %3.1f F", tempDegree, [self celciustoFahrenait:tempDegree]];
    [self writeln:result];
    [self performSelector:@selector(celciustoFahrenait)];
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@30.1];
    
    
}

-(void) sayFirstname: (NSString*) firstName andLastname: (NSString*) lastName {
    NSLog(@"%@ %@", firstName, lastName);

}
-(float) celciustoFahrenait:(float) degree {
    return degree *1.8 + 32.0;
}
-(void) celciustoFahrenait{
    NSLog(@"Do nothing");
}
-(float) celciustoFahnait2 {
    return 10.2;

}
- (void) celciusToFahrenheit2: (NSNumber*) degree {
    float result =  [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
}


@end
