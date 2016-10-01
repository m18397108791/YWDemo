//
//  YWTextField.h
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWTextField : UITextField

/**
 *  长度限制
 *
 *  @param hans  中文状态下的键盘字符长度限制
 *  @param other 英文状态下的键盘字符长度限制
 */
- (void)limitHansLength:(int)hans otherLength:(int)other ;

@end
