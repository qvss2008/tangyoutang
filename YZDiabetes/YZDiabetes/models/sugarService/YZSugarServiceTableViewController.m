//
//  YZSugarServiceTableViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSugarServiceTableViewController.h"
#import "YZSSHeadCell.h"
#import "YZSSpersonDetilTableViewController.h"
#import "YZSSshopViewController.h"
#import "YZSSfeedBackViewController.h"

@interface YZSugarServiceTableViewController ()

@property (nonatomic)YZSSHeadCell *headCell;

@end

@implementation YZSugarServiceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    // Return the number of sections.
//    return 5;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
//    if (section == 0) {
//        <#statements#>
//    }
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 75;
    }
    return 44;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
            
            if (indexPath.row == 0) {
                 self.headCell = [tableView dequeueReusableCellWithIdentifier:@"headCell"];
                self.headCell = [[YZSSHeadCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"headCell"];
                self.headCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return self.headCell;
            }
            else
            {
        
                UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
                if (!cell) {
                    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                }
                if (indexPath.row == 1) {
                    cell.textLabel.text = @"商城";
                    //cell.imageView setImage:[UIImage imageNamed:@""];
                }
                if (indexPath.row == 2) {
                    cell.textLabel.text = @"反馈";
                }
                if (indexPath.row == 3) {
                    cell.textLabel.text = @"同步";
                }
                if (indexPath.row == 4) {
                    cell.textLabel.text = @"设置";
                }
                
                
                return cell;

                
            }
          

        }

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.hidesBottomBarWhenPushed = YES;
    if (indexPath.row == 0) {
        YZSSpersonDetilTableViewController *personDetilVC = [[YZSSpersonDetilTableViewController alloc]init];
        [self.navigationController pushViewController:personDetilVC animated:YES];
    }
    else if (indexPath.row == 1)
    {
        YZSSshopViewController *shopVc = [[YZSSshopViewController alloc] init];
        [self.navigationController pushViewController:shopVc animated:YES];
    }else if (indexPath.row == 2){
        YZSSfeedBackViewController *feedBackVC = [[YZSSfeedBackViewController alloc]init];
        [self.navigationController pushViewController:feedBackVC animated:YES];
    }
    self.hidesBottomBarWhenPushed = NO;
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
