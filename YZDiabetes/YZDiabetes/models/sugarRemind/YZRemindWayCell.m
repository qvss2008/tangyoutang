//
//  YZRemindWayCell.m
//  YZDiabetes
//
//  Created by sysnet on 15/1/27.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZRemindWayCell.h"

@implementation YZRemindWayCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.remindWayLab = [[UILabel alloc]initWithFrame:CGRectMake(10,25 , 80, 20)];
    self.remindWayLab.text = @"铃声类型:";
    [self addSubview:self.remindWayLab];
    
    
    self.yuYinImgView = [[UIImageView alloc]initWithFrame:CGRectMake(115, 20, 60, 34)];
    [self.yuYinImgView setImage:[UIImage imageNamed:@"remind_yuyin_1.png"]];
    [self addSubview:self.yuYinImgView];
    
    self.musicImgView = [[UIImageView alloc]initWithFrame:CGRectMake(205, 20, 60, 34)];
    [self.musicImgView setImage:[UIImage imageNamed:@"remind_music_1.png"]];
    [self addSubview:self.musicImgView];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
