//
//  UIImageView+YWExtension.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import "UIImageView+YWExtension.h"
//#import "UIImageView+WebCache.h"
#import "UIImage+YWExtension.h"

@implementation UIImageView (YWExtension)

- (void)setCircleHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName
{

    UIImage *placeholder = [UIImage circularImage:imageName];
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (image == nil) return;
        
        self.image = [image circularImage];
    }];
}

- (void)setSquareHeaderUrl:(NSString *)url withPlaceholderImage:(NSString *)imageName
{
    UIImage *placeholder = [UIImage imageNamed:imageName];
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder];
}

@end
