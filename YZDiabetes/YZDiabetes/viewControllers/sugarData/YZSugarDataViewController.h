//
//  YZSugarDataViewController.h
//  YZDiabetes
//
//  Created by sysnet on 15/1/28.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZSugarDataViewController : UIViewController
@property (nonatomic,strong) UIView *dataPickView;
@property (nonatomic,strong) UIView *headChartView;
//日期选择
@property (nonatomic,strong) UIImageView *dataSelectView;
@property (nonatomic,strong) UILabel *dateSelectionLab;
@property (nonatomic,strong) UIButton *dataLeftBtn;
@property (nonatomic,strong) UIButton *dataRightBtn;
@property (nonatomic,strong) UIButton *dataPickBtn;
//headChartButton
@property (nonatomic,strong) UILabel *headDataLab;//日期
@property (nonatomic,strong) UILabel *headMorningLab;//凌晨
@property (nonatomic,strong) UILabel *headBreakfastLab;//早餐
@property (nonatomic,strong) UILabel *headBreakfastBeforeLab;
@property (nonatomic,strong) UILabel *headBreakfastAfterLab;
@property (nonatomic,strong) UILabel *headLunchLab;//午餐
@property (nonatomic,strong) UILabel *headLunchBeforeLab;
@property (nonatomic,strong) UILabel *headLunchAfterLab;
@property (nonatomic,strong) UILabel *headDinnerLab;//晚餐
@property (nonatomic,strong) UILabel *headDinnerBeforeLab;
@property (nonatomic,strong) UILabel *headDinnerAfterLab;
@property (nonatomic,strong) UILabel *headBeforeBadLab;//睡前

@end
