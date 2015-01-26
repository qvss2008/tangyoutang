//
//  shopCell.h
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZSSshopCell : UITableViewCell


+ (instancetype)shopWithTableiew:(UITableView *)tableView;

@property (nonatomic,weak) UIImageView *ImgView;

@property (nonatomic,weak) UILabel  *titleName;

@property (nonatomic,weak) UILabel *priceLabel;
@end
