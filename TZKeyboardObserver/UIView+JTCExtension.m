//
//  UIView+JTCExtension.m
//  DBShop2_0
//
//  Created by iMac on 15/12/13.
//  Copyright © 2015年 DBWM. All rights reserved.
//

#import "UIView+JTCExtension.h"

@implementation UIView (JTCExtension)

- (CGSize)jtc_size
{
    return self.frame.size;
}

- (void)setJtc_size:(CGSize)jtc_size
{
    CGRect frame = self.frame;
    frame.size = jtc_size;
    self.frame = frame;
}

- (CGFloat)jtc_width
{
    return self.frame.size.width;
}

- (CGFloat)jtc_height
{
    return self.frame.size.height;
}

- (void)setJtc_width:(CGFloat)jtc_width
{
    CGRect frame = self.frame;
    frame.size.width = jtc_width;
    self.frame = frame;
}

- (void)setJtc_height:(CGFloat)jtc_height
{
    CGRect frame = self.frame;
    frame.size.height = jtc_height;
    self.frame = frame;
}

- (CGFloat)jtc_x
{
    return self.frame.origin.x;
}

- (void)setJtc_x:(CGFloat)jtc_x
{
    CGRect frame = self.frame;
    frame.origin.x = jtc_x;
    self.frame = frame;
}

- (CGFloat)jtc_y
{
    return self.frame.origin.y;
}

- (void)setJtc_y:(CGFloat)jtc_y
{
    CGRect frame = self.frame;
    frame.origin.y = jtc_y;
    self.frame = frame;
}

- (CGFloat)jtc_centerX
{
    return self.center.x;
}

- (void)setJtc_centerX:(CGFloat)jtc_centerX
{
    CGPoint center = self.center;
    center.x = jtc_centerX;
    self.center = center;
}

- (CGFloat)jtc_centerY
{
    return self.center.y;
}

- (void)setJtc_centerY:(CGFloat)jtc_centerY
{
    CGPoint center = self.center;
    center.y = jtc_centerY;
    self.center = center;
}

- (CGFloat)jtc_right
{
    //    return self.jtc_x + self.jtc_width;
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)jtc_bottom
{
    //    return self.jtc_y + self.jtc_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setJtc_right:(CGFloat)jtc_right
{
    self.jtc_x = jtc_right - self.jtc_width;
}

- (void)setJtc_bottom:(CGFloat)jtc_bottom
{
    self.jtc_y = jtc_bottom - self.jtc_height;
}

+ (instancetype)viewFromXib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

- (BOOL)intersectWithView:(UIView *)view
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    return CGRectIntersectsRect(selfRect, viewRect);
}

@end
