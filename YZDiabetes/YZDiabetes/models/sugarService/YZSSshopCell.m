//
//  shopCell.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSSshopCell.h"

@implementation YZSSshopCell

+(instancetype)shopWithTableiew:(UITableView *)tableView
{
    static NSString *cellId = @"cellId";
    YZSSshopCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell ) {
        cell = [[YZSSshopCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style
                reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUpSubViews];
    }
    return  self;
}

- (void)setUpSubViews
{
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 80, 60)];
    imgView.backgroundColor = [UIColor redColor];
    
    [self addSubview:imgView];
    self.ImgView = imgView;
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(110, 0, self.frame.size.width - 110, 20)];
    label.backgroundColor = [UIColor greenColor];
    [self addSubview:label];
    self.titleName = label;
    
    
    UILabel *pricelabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 45, 80, 20)];
    pricelabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:pricelabel];
    self.priceLabel = pricelabel;
    
}


@end
