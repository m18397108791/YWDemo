//
//  Cell.m
//  YWDemo
//
//  Created by XW on 16/9/17.
//  Copyright © 2016年 yw. All rights reserved.
//

#import "Cell.h"

@implementation Cell
{
    UILabel *_titleLabel;
    UILabel *_subTitleLabel;

}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        
        
        _titleLabel = [UILabel new];
        _titleLabel.textColor = [UIColor blackColor];
        _subTitleLabel = [UILabel new];
        _subTitleLabel.textColor = [UIColor redColor];
        _subTitleLabel.numberOfLines = 0;
        [self.contentView sd_addSubviews:@[_titleLabel, _subTitleLabel]];
        
        
        
        _titleLabel.sd_layout
        .heightIs(20)
        .topSpaceToView(self.contentView, 10)
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView,10);
        
        _subTitleLabel.sd_layout
        .topSpaceToView(_titleLabel,10)
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10);
        
        
        //***********************高度自适应cell设置步骤************************
        
        [self setupAutoHeightWithBottomView:_subTitleLabel bottomMargin:10];
        
    }
    return self;
}

- (void)setText:(NSString *)text
{
    _text = text;
    
    _subTitleLabel.text = text;
}
- (void)setTitle:(NSString *)title{
    
    _title = title;
    
    _titleLabel.text = _title;
    
}
@end
