//
//  YZRemindCell.m
//  YZDiabetes
//
//  Created by sysnet on 15/1/27.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZRemindCell.h"

@implementation YZRemindCell

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
    self.remindImgView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 15,45, 45)];
//    self.remindImgView.backgroundColor = BAR_TINT_COLOR;
    [self addSubview:self.remindImgView];
    
    self.remindStrLab = [[UILabel alloc]initWithFrame:CGRectMake(55, 25, 80, 20)];
    self.remindStrLab.font = [UIFont systemFontOfSize:15.0f];
//    self.remindStrLab.backgroundColor = BAR_TINT_COLOR;
    [self addSubview:self.remindStrLab];
    
    UILabel *lableT = [[UILabel alloc]initWithFrame:CGRectMake(140, 25, 40, 20)];
//    lableT.backgroundColor = BAR_TINT_COLOR;
    lableT.font = [UIFont systemFontOfSize:15.0f];
    self.remindTimeLab = lableT;
    [self addSubview:lableT];
    
    
    UILabel *lableJ = [[UILabel alloc]initWithFrame:CGRectMake(180, 25, 40, 20)];
//    lableJ.backgroundColor = BAR_TINT_COLOR;
    self.remindSpecificTimeLab = lableJ;
    lableJ.font = [UIFont systemFontOfSize:15.0f];
    [self addSubview:lableJ];
    
    self.switchBtn = [[UISwitch alloc]initWithFrame:CGRectMake(self.bounds.size.width - 80, 20, 70, 40)];
    [self addSubview:self.switchBtn];
    
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
