//
//  YZSugarFriendDonViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSugarFriendDonViewController.h"
#import "YZSFDFirstCell.h"
#import "YZSFDSecondCell.h"
#import "YZSFDThirdCell.h"
@interface YZSugarFriendDonViewController ()<YZSFDFirstCellDelegate,YZSFDSecondCellDelegate,YZSFDThirdCellDelegate>

@end

@implementation YZSugarFriendDonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[YZSFDFirstCell class] forCellReuseIdentifier:@"firstCell"];
    [self.tableView registerClass:[YZSFDSecondCell class] forCellReuseIdentifier:@"secondCell"];
    [self.tableView registerClass:[YZSFDThirdCell class] forCellReuseIdentifier:@"thirdCell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 200;
    }
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        YZSFDFirstCell * firstCell = [tableView dequeueReusableCellWithIdentifier:@"firstCell" forIndexPath:indexPath];
        firstCell.delegate = self;
        return firstCell;
    }else if (indexPath.row == 1){
        YZSFDSecondCell *secondCell = [tableView dequeueReusableCellWithIdentifier:@"secondCell" forIndexPath:indexPath];
        secondCell.delegate = self;
        return secondCell;
    }else if (indexPath.row == 2){
        YZSFDThirdCell *thirdCell = [tableView dequeueReusableCellWithIdentifier:@"thirdCell" forIndexPath:indexPath];
        thirdCell.delegate = self;
        return thirdCell;
    }
    return nil;
}

#pragma mark - first cell delegate action
- (void)selectedDetectionButton:(UIButton *)button{
    
}
- (void)selectedMedicationButton:(UIButton *)button{
    
}
- (void)selectedDietButton:(UIButton *)button{
    
}
#pragma mark - second cell delegate action
- (void)selectedConsultingButton:(UIButton *)button{
    
}
- (void)selectedInformationButton:(UIButton *)button{
    
}
#pragma mark - third cell delegate action
- (void)selectedRecordButton:(UIButton *)button{
    
}
- (void)selectedReportButton:(UIButton *)button{
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
