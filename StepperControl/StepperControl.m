//
//  StepperControl.m
//  StepperControl
//
//  Created by James O'Connor on 6/22/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "StepperControl.h"

@implementation StepperControl

-(instancetype) init {
    
    self = [super init];
    [self setup];
    return self;
    
}

-(void) setup {
    
    StepValue = 0;
    
    self.frame=CGRectMake(0, 0, 200, 40);
    self.layer.cornerRadius=15;
    self.layer.masksToBounds=YES;
    
    UIButton *upButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    upButton.backgroundColor = [UIColor redColor];
    upButton.userInteractionEnabled = YES;
    [upButton setTitle:@"+" forState:UIControlStateNormal];
    [upButton addTarget:self action:@selector(upButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *downButton = [[UIButton alloc] initWithFrame:CGRectMake(160, 0, 40, 40)];
    downButton.backgroundColor = [UIColor blueColor];
    [downButton setTitle:@"-" forState:UIControlStateNormal];
    [downButton addTarget:self action:@selector(downButtonClick)
         forControlEvents:UIControlEventTouchUpInside];
    
    self.current = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 120, 40)];
    self.current.backgroundColor = [UIColor yellowColor];
    self.current.text = [NSString stringWithFormat:@"%d", StepValue];
    self.current.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:upButton];
    [self addSubview:downButton];
    [self addSubview:self.current];
    
}

-(void) upButtonClick {
    
    StepValue++;
    self.current.text = [NSString stringWithFormat:@"%d", StepValue];
    
    //notify the delegates
    [self.delegate stepperControlValueChanged:StepValue];
    
}

-(void) downButtonClick {
    
    StepValue--;
    self.current.text = [NSString stringWithFormat:@"%d", StepValue];
    //NSLog(@"%d", StepValue);

    //notify the delegates
    [self.delegate stepperControlValueChanged:StepValue];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
@end
