//
//  YZSFDFirstCell.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSFDFirstCell.h"

@implementation YZSFDFirstCell
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
    UIButton *detectionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    detectionButton.frame = CGRectMake(0, 0, width, 200);
    detectionButton.tag = 101;
    [detectionButton setBackgroundImage:[UIImage imageNamed:@"TYT_xtjc.png"] forState:UIControlStateNormal];
    [detectionButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:detectionButton];
    UIButton *medicationButton = [UIButton buttonWithType:UIButtonTypeCustom];
    medicationButton.frame = CGRectMake(width, 0, width, 100);
    medicationButton.tag = 102;
    [medicationButton setBackgroundImage:[UIImage imageNamed:@"TYT_yy.png"] forState:UIControlStateNormal];
    [medicationButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:medicationButton];
    UIButton *dietButton = [UIButton buttonWithType:UIButtonTypeCustom];
    dietButton.frame = CGRectMake(width, 100, width, 100);
    dietButton.tag = 103;
    [dietButton setBackgroundImage:[UIImage imageNamed:@"TYT_ys.png"] forState:UIControlStateNormal];
    [dietButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:dietButton];

}
- (void)clicked:(UIButton *)button{
    if (button.tag == 101) {
        if ([_delegate respondsToSelector:@selector(selectedDetectionButton:)]) {
            [_delegate selectedDetectionButton:button];
        }
    }else if (button.tag == 102){
        if ([_delegate respondsToSelector:@selector(selectedMedicationButton:)]) {
            [_delegate selectedMedicationButton:button];
        }
    }else if (button.tag == 103){
        if ([_delegate respondsToSelector:@selector(selectedDietButton:)]) {
            [_delegate selectedDietButton:button];
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
