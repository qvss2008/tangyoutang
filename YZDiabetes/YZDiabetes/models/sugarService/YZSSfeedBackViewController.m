//
//  feedBackViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSSfeedBackViewController.h"
#import "YZAdaptiveUtil.h"


@interface YZSSfeedBackViewController ()

@end

@implementation YZSSfeedBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = 0;
    self.title = @"反馈";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setFeedBackAction];
    // Do any additional setup after loading the view.
}

//设置反馈内容
- (void)setFeedBackAction
{
    self.feedBackMessage = [[UITextView alloc]initWithFrame:CGRectMake(5, 5, self.view.bounds.size.width - 10 , 120)];
    self.feedBackMessage.backgroundColor = [UIColor purpleColor];
    
    
    self.feedBackSubmit = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.feedBackSubmit.frame = CGRectMake(5, 140, self.view.bounds.size.width - 10, 40);
    [self.feedBackSubmit setTitle:@"提交" forState:UIControlStateNormal];
    self.feedBackSubmit.backgroundColor = BAR_TINT_COLOR;
    
    self.feedBackIntroduceLab = [[UILabel alloc] init];
    NSString *feedBackIntrouuce = @"欢迎使用糖友堂血糖助理，为了更好的为糖友服务，您可以将您在产品使用过程中的意见和建议直接反馈给我们。";
    UIFont *font = [UIFont systemFontOfSize:15.0f];
    self.feedBackIntroduceLab.font = font;
    CGRect bounds = [YZAdaptiveUtil labelAdaptiveByText:feedBackIntrouuce andFont:font];
    self.feedBackIntroduceLab.numberOfLines = 0;
    self.feedBackIntroduceLab.text = feedBackIntrouuce;
    self.feedBackIntroduceLab.frame = CGRectMake(5, 200, CGRectGetWidth(bounds) - 10, CGRectGetHeight(bounds));
    self.feedBackImage = [[UIImageView alloc]initWithFrame:CGRectMake(210, self.view.bounds.size.height - 244, 100, 140)];
    self.feedBackImage.backgroundColor = [UIColor purpleColor];
    self.feedBackImage.image = [UIImage imageNamed:@""];
    [self.view addSubview:self.feedBackMessage];
    [self.view addSubview:self.feedBackSubmit];
    [self.view addSubview:self.feedBackIntroduceLab];
    [self.view addSubview:self.feedBackImage];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
