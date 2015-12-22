//
//  TZTextField.m
//  TZKeyboardObserver
//
//  Created by iMac on 15/12/21.
//  Copyright © 2015年 TZ. All rights reserved.
//

#import "TZTextField.h"

@implementation TZTextField

- (BOOL)becomeFirstResponder{
    
    [self.delegate scrollTheView:self];
    
    return [super becomeFirstResponder];
}

- (BOOL)resignFirstResponder{
    
    [self.delegate recoverScorll:self];
    
    return [super resignFirstResponder];
}

@end
