//
//  UIImageView+YWExtension.h
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (YWExtension)

/**
 *  圆形图片
 *
 *  @param url       图片的网址
 *  @param imageName 占位图片的名称
 */
- (void)setCircleHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName;
/**
 *  方形图片
 *
 *  @param url       图片的网址
 *  @param imageName 占位图片的名称
 */
- (void)setSquareHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName;
@end
