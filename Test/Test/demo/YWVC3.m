//
//  YWVC3.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

/**
 * textfiled 长度限制
 *
 *  YWTextField 是继承于 textfiled
 *  实列化该对象，调用下列方法
 *  长度限制
 *
 *  @param hans  中文状态下的键盘字符长度限制
 *  @param other 英文状态下的键盘字符长度限制
 - (void)limitHansLength:(int)hans otherLength:(int)other ;
 */




#import "YWVC3.h"
#import "YWTextField.h"



@interface YWVC3 ()

@end

@implementation YWVC3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    YWTextField *tf = [YWTextField new];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"text最大长度为8";
    [self.view addSubview:tf];
    
    
    tf.sd_layout
    .rightSpaceToView(self.view,20)
    .leftSpaceToView(self.view,20)
    .centerXEqualToView(self.view)
    .topSpaceToView(self.view,80);
    
    [tf limitHansLength:8 otherLength:8];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
