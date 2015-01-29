//
//  YSChartCell.m
//  YZDiabetes
//
//  Created by sysnet on 15/1/28.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YSChartCell.h"

@implementation YSChartCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initialize];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)initialize
{
    float Wight = CGRectGetWidth(self.bounds)/9;
    //日期
    self.chartDayNumberLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, Wight, 44)];
    self.chartDayNumberLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartDayNumberLab.backgroundColor = BAR_SUJI_COLOR(245.0f, 255.0f, 250.0f, 1.0f);
    [self addSubview:self.chartDayNumberLab];
    
    //凌晨
    self.chartMorningLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight, 0, Wight, 44)];
    self.chartMorningLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartMorningLab.backgroundColor = BAR_SUJI_COLOR(245.0f, 245.0f, 220.0f, 1.0f);
    [self addSubview:self.chartMorningLab];
    
    //早餐前
    self.chartBreakfastBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 2, 0, Wight, 44)];
    self.chartBreakfastBeforeLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartBreakfastBeforeLab.backgroundColor = BAR_SUJI_COLOR(255.0f, 228.0f, 196.0f, 1.0f);
    [self addSubview:self.chartBreakfastBeforeLab];
    
    //早餐后
    self.chartBreakfastAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 3, 0, Wight, 44)];
    self.chartBreakfastAfterLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartBreakfastAfterLab.backgroundColor = BAR_SUJI_COLOR(255.0f, 228.0f, 196.0f, 1.0f);
    [self addSubview:self.chartBreakfastAfterLab];
    
    //午餐前
    self.chartLunchBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 4, 0, Wight, 44)];
    self.chartLunchBeforeLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartLunchBeforeLab.backgroundColor = BAR_TINT_COLOR;
    [self addSubview:self.chartLunchBeforeLab];
    
    //午餐后
    self.chartLunchAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 5, 0, Wight, 44)];
    self.chartLunchAfterLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartLunchAfterLab.backgroundColor = BAR_TEXT_COLOR;
    [self addSubview:self.chartLunchAfterLab];
    
    //晚餐前
    self.chartDinnerBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 6, 0, Wight, 44)];
    self.chartDinnerBeforeLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartDinnerBeforeLab.backgroundColor = BAR_TINT_COLOR;
    [self addSubview:self.chartDinnerBeforeLab];
    
    //晚餐后
    self.chartDinnerAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 7, 0, Wight, 44)];
    self.chartDinnerAfterLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartDinnerAfterLab.backgroundColor = BAR_TEXT_COLOR;
    [self addSubview:self.chartDinnerAfterLab];
    
    //睡前
    self.chartBeforeBadLab = [[UILabel alloc]initWithFrame:CGRectMake(Wight * 8, 0, Wight, 44)];
    self.chartBeforeBadLab.font = [UIFont systemFontOfSize:13.0f];
    self.chartBeforeBadLab.backgroundColor = BAR_TINT_COLOR;
    [self addSubview:self.chartBeforeBadLab];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
