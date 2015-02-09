//
//  YZSFDThirdCell.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSFDThirdCell.h"

@implementation YZSFDThirdCell
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
    UIButton *recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
    recordButton.frame = CGRectMake(0, 0, width, 100);
    recordButton.tag = 101;
    [recordButton setBackgroundImage:[UIImage imageNamed:@"TYT_jl.png"] forState:UIControlStateNormal];
    [recordButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:recordButton];
    UIButton *reportButton = [UIButton buttonWithType:UIButtonTypeCustom];
    reportButton.frame = CGRectMake(width, 0, width, 100);
    reportButton.tag = 102;
    [reportButton setBackgroundImage:[UIImage imageNamed:@"TYT_bg.png"] forState:UIControlStateNormal];
    [reportButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:reportButton];

}

- (void)clicked:(UIButton *)button{
    if (button.tag == 101) {
        if ([_delegate respondsToSelector:@selector(selectedRecordButton:)]) {
            [_delegate selectedRecordButton:button];
        }
    }else if (button.tag == 102){
        if ([_delegate respondsToSelector:@selector(selectedReportButton:)]) {
            [_delegate selectedReportButton:button];
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
