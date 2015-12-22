//
//  TZTextField.h
//  TZKeyboardObserver
//
//  Created by iMac on 15/12/21.
//  Copyright © 2015年 TZ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class TZTextField;

@protocol TZTextFieldDelegate <NSObject>

- (void)scrollTheView:(TZTextField *)textField;
- (void)recoverScorll:(TZTextField *)textField;

@end

@interface TZTextField : UITextField

@property (nonatomic, weak) id<TZTextFieldDelegate> delegate;

@end
