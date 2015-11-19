//
//  DemoSelector.m
//  ObjectiveExamples
//
//  Created by Mieu Mi on 11/19/15.
//  Copyright © 2015 Thong. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay: 2];

    
}
- (IBAction)CrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple": @"táo", @"lemon": @"chanh"} waitUntilDone: true];
}

- (void) doCrunchData {
    [NSThread sleepForTimeInterval: 20];
}

- (void) processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

- (void) hideSlider {
    self.slider.hidden = true;
}

@end
