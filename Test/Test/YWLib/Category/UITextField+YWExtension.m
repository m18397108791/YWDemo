//
//  UITextField+YWExtension.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import "UITextField+YWExtension.h"

static NSString * const YWPlaceholderColorKey = @"placeholderLabel.textColor";

static NSString * const YWPlaceholderFontKey = @"placeholderLabel.font";


@implementation UITextField (YWExtension)

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    // 提前设置占位文字, 目的 : 让它提前创建placeholderLabel
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    // 恢复到默认的占位文字颜色
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    // 设置占位文字颜色
    [self setValue:placeholderColor forKeyPath:YWPlaceholderColorKey];
}

- (UIColor *)placeholderColor
{
    return [self valueForKeyPath:YWPlaceholderColorKey];
}

@end
