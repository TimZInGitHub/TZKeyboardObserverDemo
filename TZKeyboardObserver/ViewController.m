//
//  ViewController.m
//  TZKeyboardObserver
//
//  Created by iMac on 15/12/21.
//  Copyright © 2015年 TZ. All rights reserved.
//

#import "ViewController.h"
#import "TZTextField.h"
#import "UIView+JTCExtension.h"

@interface ViewController () <TZTextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *tzScrollView;
@property (weak, nonatomic) IBOutlet TZTextField *firstLine;
@property (weak, nonatomic) IBOutlet TZTextField *secondLine;
@property (weak, nonatomic) IBOutlet TZTextField *thirdLine;
@property (weak, nonatomic) IBOutlet TZTextField *fouthLine;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tzScrollView.contentSize = CGSizeMake(1000 , 1000);
    
    self.tzScrollView.scrollEnabled = YES;
    self.tzScrollView.backgroundColor = [UIColor redColor];
    self.firstLine.delegate = self;
    self.secondLine.delegate = self;
    self.thirdLine.delegate = self;
    self.fouthLine.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [self.tzScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (void)scrollTheView:(TZTextField *)textField{
    
    CGFloat centerOffset = self.tzScrollView.jtc_height / 2;
    CGFloat textFieldCenterY = textField.jtc_centerY;
    
    NSLog(@"%s", __func__);
    NSLog(@"%f--%f",textFieldCenterY, centerOffset);
    
    if (textFieldCenterY > centerOffset) {
        [self.tzScrollView setContentOffset:CGPointMake(0, (textFieldCenterY - centerOffset) + 100) animated:YES];
    }
    
    
}

- (void)recoverScorll:(TZTextField *)textField{
    
}



@end
