//
//  YZRemindCell.h
//  YZDiabetes
//
//  Created by sysnet on 15/1/27.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZRemindCell : UITableViewCell
@property (nonatomic,strong)UIImageView *remindImgView;
@property (nonatomic,strong)UILabel *remindStrLab;
@property (nonatomic,strong)UILabel *remindTimeLab;
@property (nonatomic,strong)UILabel *remindSpecificTimeLab;
@property (nonatomic,strong)UISwitch *switchBtn;

@end
