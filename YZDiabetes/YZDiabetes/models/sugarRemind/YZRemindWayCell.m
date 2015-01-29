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
    self.selectionStyle = 0;
    self.remindWayLab = [[UILabel alloc]initWithFrame:CGRectMake(10,25 , 80, 20)];
    self.remindWayLab.text = @"铃声类型:";
    [self addSubview:self.remindWayLab];    
    
    //self.yuYinImgView = [[UIImageView alloc]initWithFrame:CGRectMake(115, 20, 60, 34)];
    //[self.yuYinImgView setImage:[UIImage imageNamed:@"remind_yuyin_1.png"]];
    self.yuyinSelected = NO;
    self.yuYinImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"remind_yuyin_2.png"] highlightedImage:[UIImage imageNamed:@"remind_yuyin_1.png"]];
    self.yuYinImgView.frame = CGRectMake(115, 20, 60, 34);
    self.yuYinImgView.userInteractionEnabled = YES;
    UITapGestureRecognizer *yuYinTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickYuYinAction)];
    [self.yuYinImgView addGestureRecognizer:yuYinTap];
    [self addSubview:self.yuYinImgView];
    
    
    self.musicSelected = NO;
    self.musicImgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"remind_music_2.png"] highlightedImage:[UIImage imageNamed:@"remind_music_1.png"]];
    self.musicImgView.frame = CGRectMake(205, 20, 60, 34);
    self.musicImgView.userInteractionEnabled = YES;
    UITapGestureRecognizer *musicTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickMucicAction)];
    [self.musicImgView addGestureRecognizer:musicTap];
    [self addSubview:self.musicImgView];
}

- (void)clickYuYinAction{
    if (self.yuyinSelected) {
        
        self.yuYinImgView.highlighted = NO;
        self.yuyinSelected = NO;
    }else{
        self.yuYinImgView.highlighted = YES;
        self.yuyinSelected = YES;
    }
    if ([_delegate respondsToSelector:@selector(tapYuYinSelected:)]) {
        [_delegate tapYuYinSelected:self.yuyinSelected];
    }
}

- (void)clickMucicAction
{
    if (self.musicSelected) {
        self.musicImgView.highlighted = NO;
        self.musicSelected = NO;
    }else{
        self.musicImgView.highlighted = YES;
        self.musicSelected = YES;
    }
    if ([_delegate respondsToSelector:@selector(tapMusicSelected:)]) {
        [_delegate tapMusicSelected:self.musicSelected];
    }
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
@end
