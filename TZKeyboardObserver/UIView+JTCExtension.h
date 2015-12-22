//
//  UIView+JTCExtension.h
//  DBShop2_0
//
//  Created by iMac on 15/12/13.
//  Copyright © 2015年 DBWM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JTCExtension)

@property (nonatomic, assign) CGSize jtc_size;
@property (nonatomic, assign) CGFloat jtc_width;
@property (nonatomic, assign) CGFloat jtc_height;
@property (nonatomic, assign) CGFloat jtc_x;
@property (nonatomic, assign) CGFloat jtc_y;
@property (nonatomic, assign) CGFloat jtc_centerX;
@property (nonatomic, assign) CGFloat jtc_centerY;

@property (nonatomic, assign) CGFloat jtc_right;
@property (nonatomic, assign) CGFloat jtc_bottom;

+ (instancetype)viewFromXib;

- (BOOL)intersectWithView:(UIView *)view;

@end
