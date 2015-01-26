//
//  YZSFDSecondCell.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSFDSecondCell.h"

@implementation YZSFDSecondCell
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
    float width = CGRectGetWidth(self.bounds) / 2;
    UIButton *consultingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    consultingButton.frame = CGRectMake(0, 0, width + 30, 100);
    consultingButton.tag = 101;
    [consultingButton setBackgroundImage:[UIImage imageNamed:@"TYT_zx.png"] forState:UIControlStateNormal];
    [consultingButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:consultingButton];
    UIButton *informationButton = [UIButton buttonWithType:UIButtonTypeCustom];
    informationButton.frame = CGRectMake(width + 30, 0, width - 30, 100);
    informationButton.tag = 102;
    [informationButton setBackgroundImage:[UIImage imageNamed:@"TYT_Massage.png"] forState:UIControlStateNormal];
    [informationButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:informationButton];

}
- (void)clicked:(UIButton *)button{
    if (button.tag == 101) {
        if ([_delegate respondsToSelector:@selector(selectedConsultingButton:)]) {
            [_delegate selectedConsultingButton:button];
        }
    }else if (button.tag == 102){
        if ([_delegate respondsToSelector:@selector(selectedInformationButton:)]) {
            [_delegate selectedInformationButton:button];
        }
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
