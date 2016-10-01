//
//  UIImage+YWExtension.h
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YWExtension)
/**
 *  返回圆形图片
 */
- (instancetype)circularImage;

/**
 *  @param name 图片的名字
 *
 *  @return 返回圆形图片
 */
+ (instancetype)circularImage:(NSString *)name;
@end
