//
//  HotShowingCollectionViewCell.m
//  Cinephile
//
//  Created by 麻炜怡 on 11/17/15.
//  Copyright © 2015 Weiyi Ma. All rights reserved.
//

#import "HotShowingCollectionViewCell.h"

@implementation HotShowingCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (!(self = [super initWithFrame:frame])) return nil;
    
    UIImage *image = [UIImage imageNamed:@"no_movie"];
    
    NSLog(@"%lf",self.bounds.size.width / 3);
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width / 3, 100)];
    imageView.image = image;
    imageView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:imageView];
   // UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 80, 20)];
   // label.text = @"NoMovie";
   // [self.contentView addSubview:label];
    
    
    return self;
}

@end
