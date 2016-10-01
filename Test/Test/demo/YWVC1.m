//
//  YWVC1.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

/** ! 图片圆角 ！不需要将ImageView裁剪 **/
 /*  使用方法：把category文件拖入工程，即可使用
  *  圆角：- (void)setCircleHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName;
  * 方形： - (void)setSquareHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName;
  */

/**! 好用的话的，麻烦各位点个start*/

#import "YWVC1.h"
#import "UIImageView+YWExtension.h"

@interface YWVC1 ()

@property (strong, nonatomic)  UIImageView *circularImageView;

@property (strong, nonatomic)  UIImageView *squareImageView;
@end

@implementation YWVC1

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _circularImageView = [UIImageView new];
    [self.view addSubview:_circularImageView];
    
    _squareImageView = [UIImageView new];
    [self.view addSubview:_squareImageView];
    
    _circularImageView.sd_layout
    .centerXEqualToView(self.view)
    .heightIs(60)
    .widthIs(60)
    .topSpaceToView(self.view,70);
    
    
    _squareImageView.sd_layout
    .topSpaceToView(_circularImageView,20)
    .centerXEqualToView(_circularImageView)
    .widthIs(60)
    .heightIs(60);
    
    
    [self.circularImageView setCircleHeaderUrl:nil withPlaceholderImage:@"share"];
    
    [self.squareImageView setSquareHeaderUrl:nil withPlaceholderImage:@"share"];
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
