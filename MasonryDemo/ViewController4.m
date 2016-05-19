//
//  ViewController4.m
//  MasonryDemo
//
//  Created by chen on 16/5/18.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import "ViewController4.h"
#import "MMPlaceHolder.h"
#import "UIView+Masonry_LJC.h"

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"//这个类的导入必须写在这两个宏的下边equalTo才有宏效果

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    WS(ws);
    
    //基础1:居中显示一个view
    UIView *sv = [UIView new];
//        [sv showPlaceHolder];
    sv.backgroundColor = [UIColor blackColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(375, 375));
    }];

    //基础4:在UIScrollView顺序排列一些view并自动计算contentSize
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.backgroundColor = [UIColor whiteColor];
    [sv addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(sv).insets(UIEdgeInsetsMake(5, 5, 5, 5));
    }];
    UIView *container = [UIView new];
    [scrollView addSubview:container];
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
        //导航控制器影响scrollView的初始坐标,导航过来的区别于模态视图
        make.top.equalTo(scrollView.top).offset(-64);
        make.left.equalTo(scrollView.left);
        make.right.equalTo(scrollView.right);
        make.bottom.equalTo(scrollView.bottom);
        make.width.equalTo(scrollView);
    }];
    container.backgroundColor = [UIColor redColor];
    int count = 10;
    UIView *lastView = nil;
    //10个视图按顺序从上向下排列
    for (int i= 0; i<=count; i++) {
        UIView *subv = [UIView new];
        [container addSubview:subv];
        subv.backgroundColor = [UIColor colorWithHue:(arc4random()%256/256.0) saturation:(arc4random()%128/256.0) + 0.5 brightness:(arc4random()%128/256.0) + 0.5 alpha:1];
        
        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(container);
            make.height.mas_equalTo(@(20*i));
            if (lastView) {
                //新视图的顶部在最后一个视图的底部
                make.top.mas_equalTo(lastView.mas_bottom);
            }else{
                //第一个视图顶部在container视图的顶部位置
                make.top.mas_equalTo(container.mas_top);
            }
        }];
        [subv showPlaceHolder];
        [subv showPlaceHolderWithLineColor:[UIColor redColor]];
        //把当前子视图设置为最后一个视图
        lastView = subv;
        
    }
    //container视图的底部在最后一个视图的底部
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.mas_bottom);
    }];
//    [sv showPlaceHolderWithAllSubviews];
    [sv showPlaceHolder];
    [sv showPlaceHolderWithLineColor:[UIColor redColor]];


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
