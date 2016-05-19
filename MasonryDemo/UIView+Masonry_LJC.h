//
//  UIView+Masonry_LJC.h
//  MasonryDemo
//
//  Created by chen on 16/5/17.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Masonry_LJC)

//水平方向等间距分布
-(void)distributeSpacingHorizontallyWith:(NSArray *)views;
//垂直方向等间距分布
-(void)distributeSpacingVerticallyWith:(NSArray *)views;
@end
