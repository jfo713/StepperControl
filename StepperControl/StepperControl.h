//
//  StepperControl.h
//  StepperControl
//
//  Created by James O'Connor on 6/22/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperControlProtocol

-(void) stepperControlValueChanged:(int) StepValue;

@end

IB_DESIGNABLE

@interface StepperControl : UIView {
    
    int StepValue;

}

@property UILabel *current;

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic,weak) id<StepperControlProtocol> delegate;

@end





