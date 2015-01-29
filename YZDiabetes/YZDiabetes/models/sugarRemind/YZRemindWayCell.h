//
//  YZRemindWayCell.h
//  YZDiabetes
//
//  Created by sysnet on 15/1/27.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YZRemindWayCellDelegate <NSObject>

- (void)tapYuYinSelected:(BOOL)selected;
- (void)tapMusicSelected:(BOOL)selected;

@end
@interface YZRemindWayCell : UITableViewCell
@property (nonatomic) id<YZRemindWayCellDelegate>delegate;
@property (nonatomic,strong)UILabel *remindWayLab;
@property (nonatomic,strong)UIImageView *yuYinImgView;
@property (nonatomic,strong)UIImageView *musicImgView;
@property (nonatomic) BOOL yuyinSelected;
@property (nonatomic) BOOL musicSelected;
@end
