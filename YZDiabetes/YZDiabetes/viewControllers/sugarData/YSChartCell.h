//
//  YSChartCell.h
//  YZDiabetes
//
//  Created by sysnet on 15/1/28.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSChartCell : UITableViewCell
@property (nonatomic,strong)UILabel *chartDayNumberLab;
@property (nonatomic,strong)UILabel *chartMorningLab;
@property (nonatomic,strong)UILabel *chartBreakfastBeforeLab;
@property (nonatomic,strong)UILabel *chartBreakfastAfterLab;
@property (nonatomic,strong)UILabel *chartLunchBeforeLab;
@property (nonatomic,strong)UILabel *chartLunchAfterLab;
@property (nonatomic,strong)UILabel *chartDinnerBeforeLab;
@property (nonatomic,strong)UILabel *chartDinnerAfterLab;
@property (nonatomic,strong)UILabel *chartBeforeBadLab;

@end
