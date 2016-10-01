//
//  YWVC.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.


#import "YWVC.h"
#import "Cell.h"

@interface YWVC ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) NSArray *dataArr;
@property (strong, nonatomic) NSArray *dataArr1;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation YWVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataArr = @[@"demo1",@"demo2",@"demo3"];
    self.dataArr1 = @[@"圆形图片",@"改变UITextFiled占位字体的颜色",@"限制tf长度"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[Cell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.text = self.dataArr1[indexPath.row];
    cell.title = self.dataArr[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    
    return [self.tableView cellHeightForIndexPath:indexPath model:self.dataArr1[indexPath.row] keyPath:@"text" cellClass:[Cell class] contentViewWidth:[self cellContentViewWith]];

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *demoClassString = [NSString stringWithFormat:@"YWVC%ld", (long)indexPath.row + 1];
    UIViewController *vc = [NSClassFromString(demoClassString) new];
    vc.title = demoClassString;
    [self.navigationController pushViewController:vc animated:YES];
}



- (CGFloat)cellContentViewWith
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    // 适配ios7横屏
    if ([UIApplication sharedApplication].statusBarOrientation != UIInterfaceOrientationPortrait && [[UIDevice currentDevice].systemVersion floatValue] < 8) {
        width = [UIScreen mainScreen].bounds.size.height;
    }
    
    return width;
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
