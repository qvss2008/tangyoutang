//
//  YZSugarFriendDonDelegate.h
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#ifndef YZDiabetes_YZSugarFriendDonDelegate_h
#define YZDiabetes_YZSugarFriendDonDelegate_h
#import <UIKit/UIKit.h>
@protocol YZSFDFirstCellDelegate <NSObject>

- (void)selectedDetectionButton:(UIButton *)button;
- (void)selectedMedicationButton:(UIButton *)button;
- (void)selectedDietButton:(UIButton *)button;

@end
@protocol YZSFDSecondCellDelegate <NSObject>

- (void)selectedConsultingButton:(UIButton *)button;
- (void)selectedInformationButton:(UIButton *)button;

@end
@protocol YZSFDThirdCellDelegate <NSObject>

- (void)selectedRecordButton:(UIButton *)button;
- (void)selectedReportButton:(UIButton *)button;

@end

#endif
