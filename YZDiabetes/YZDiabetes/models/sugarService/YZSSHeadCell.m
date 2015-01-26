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
    self.headImg.backgroundColor = [UIColor purpleColor];
    //headNameLable
    self.nameLab = [[UILabel alloc]initWithFrame:CGRectMake(75, 15, 50, 20)];
    self.nameLab.backgroundColor = [UIColor redColor];
    self.nameLab.text = @"name";
    //HeadPhoneNumber
    self.phoneNumberLab = [[UILabel alloc]initWithFrame:CGRectMake(75, 45, 100, 15)];
    self.phoneNumberLab.backgroundColor = [UIColor redColor];
    
    
    [self addSubview:self.headImg];
    [self addSubview:self.nameLab];
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
