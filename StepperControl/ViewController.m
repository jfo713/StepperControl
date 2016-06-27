//
//  ViewController.m
//  StepperControl
//
//  Created by James O'Connor on 6/22/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    StepperControl *stepperControl = [[StepperControl alloc] init];
    
    stepperControl.frame = CGRectMake(self.view.frame.size.width/2-100, self.view.frame.size.height/2-20, 200, 40);
    
    stepperControl.delegate = self;
    
    [self.view addSubview:stepperControl];
    
}

-(void)stepperControlValueChanged:(int)StepValue {
    
    NSLog(@"%d", StepValue);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
