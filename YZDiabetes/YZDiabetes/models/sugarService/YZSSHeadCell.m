//
//  YZSSHeadCell.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSSHeadCell.h"

@implementation YZSSHeadCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initialize];
    }
    return self;
}

-(void)initialize
{
    //headImageView
    self.headImg =[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 64, 64)];
//    self.headImg.backgroundColor = BAR_TEXT_COLOR;
    [self.headImg setImage:[UIImage imageNamed:@"service_personImg.png"]];
    
    //headNameLable
    self.nameLab = [[UILabel alloc]initWithFrame:CGRectMake(75, 15, 80, 20)];
//    self.nameLab.backgroundColor = BAR_TEXT_COLOR;
    self.nameLab.text = @"张杰杰";
    
    //HeadPhoneLab
    self.phoneLab = [[UILabel alloc]initWithFrame:CGRectMake(75, 45, 40, 20)];
    self.phoneLab.text = @"电话:";
    
    //HeadPhoneNumber
    self.phoneNumberLab = [[UILabel alloc]initWithFrame:CGRectMake(115, 47, 140, 15)];
//    self.phoneNumberLab.backgroundColor = BAR_TEXT_COLOR;
    self.phoneNumberLab.text = @"13880808888";
    
    [self addSubview:self.headImg];
    [self addSubview:self.nameLab];
    [self addSubview:self.phoneLab];
    [self addSubview:self.phoneNumberLab];
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
