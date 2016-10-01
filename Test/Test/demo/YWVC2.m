//
//  YWVC2.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

/**
 *  textfiled改变占位符字体颜色
 *  将UITextField+YWExtension.h和.m文件拖入工程，引入头文件
 *  设置textfiled的placeholderColor颜色即可
 */
/**! 好用的话的，麻烦各位点个start*/

#import "YWVC2.h"
#import "UITextField+YWExtension.h"

@interface YWVC2 ()

@end

@implementation YWVC2

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UITextField *tf = [UITextField new];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"改变占位字体的颜色";
    tf.placeholderColor = [UIColor redColor];
    [self.view addSubview:tf];
    
    
    
    tf.sd_layout
    .rightSpaceToView(self.view,20)
    .leftSpaceToView(self.view,20)
    .centerXEqualToView(self.view)
    .topSpaceToView(self.view,80);
    
    
    
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
