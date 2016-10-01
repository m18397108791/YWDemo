//
//  YWTextField.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import "YWTextField.h"

@interface YWTextField ()
@property (assign, nonatomic) int hans;
@property (assign, nonatomic) int other;
@end


@implementation YWTextField

// 注意区别初始化方式
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.hans = -1;
        self.other = -1;
        // 初始化时添加监听文字的改变
        [self addTarget:self action:@selector(searchDidChange:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

- (void)limitHansLength:(int)hans otherLength:(int)other {
    self.hans = hans; // 设置中文状态下的限制字数
    self.other = other; // 设置状态下的限制字数
}

- (void)searchDidChange:(UITextField *)textField {
    
    /**
     系统自带键盘：英文下返回en-US，中文下返回zh-Hans；
     
     搜狗输入法：中英文下都返回zh-Hans；
     
     百度输入法：中英文下都返回zh_CN；
     
     GO输入法：中英文下都返回mul；
     */
    
    // 判断输入状态是否为英文
    if (![textField.textInputMode.primaryLanguage isEqualToString:@"en-US"]) {
        // 过滤掉输入时高亮状态下的情况
        if (!textField.markedTextRange && (self.hans >= 0) && (textField.text.length > self.hans)) {
            [self setCaretPositionWithTextField:textField limit:self.hans];
        }
    } else {
        // 英文输入状态下
        if ((self.other >= 0) && (textField.text.length > self.other)) {
            [self setCaretPositionWithTextField:textField limit:self.other];
        }
    }
}
- (void)setCaretPositionWithTextField:(UITextField *)textField limit:(NSUInteger)length {
    // 拿到截取之前的光标位置
    UITextPosition *selectedPosition = textField.selectedTextRange.start;
    // 截取限制字数以内的文本
    textField.text = [textField.text substringToIndex:length];
    // 恢复光标的位置
    textField.selectedTextRange = [textField textRangeFromPosition:selectedPosition toPosition:selectedPosition];
}

@end
