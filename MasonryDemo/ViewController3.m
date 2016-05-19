//
//  ViewController3.m
//  MasonryDemo
//
//  Created by chen on 16/5/18.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import "ViewController3.h"
#import "MMPlaceHolder.h"

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"//这个类的导入必须写在这两个宏的下边equalTo才有宏效果

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    WS(ws);
    //基础1:居中显示一个view
    UIView *sv = [UIView new];
    //    [sv showPlaceHolder];
    sv.backgroundColor = [UIColor blackColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(375, 375));
    }];
    //基础3:让两个高度为150的view垂直居中且等宽且等间距排列,间隔为10(自动计算器宽度)
    UIView *sv2 = [UIView new];
    [sv2 showPlaceHolder];
    sv2.backgroundColor = [UIColor redColor];
    [sv addSubview:sv2];
    UIView *sv3 = [UIView new];
    [sv3 showPlaceHolder];
    sv3.backgroundColor = [UIColor redColor];
    [sv addSubview:sv3];
    
    int padding1 = 10;
    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.left.equalTo(sv.mas_left).offset(padding1);
        make.right.equalTo(sv3.mas_left).offset(-padding1);
        make.height.mas_equalTo(@150);
        make.width.equalTo(sv3);
        
    }];
    
    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(sv.mas_centerY);
        make.left.equalTo(sv2.mas_right).offset(padding1);
        make.right.equalTo(sv.mas_right).offset(-padding1);
        make.height.mas_equalTo(sv2);
        make.width.mas_equalTo(sv2);
    }];


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
