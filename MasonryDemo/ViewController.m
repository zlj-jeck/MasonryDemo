//
//  ViewController.m
//  MasonryDemo
//
//  Created by chen on 16/5/16.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import "ViewController.h"
#import "ViewController44.h"
//#import "MMPlaceHolder.h"
//#import "UIView+Masonry_LJC.h"
//
//#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
////define this constant if you want to use Masonry without the 'mas_' prefix
//#define MAS_SHORTHAND
////define this constant if you want to enable auto-boxing for default syntax
//#define MAS_SHORTHAND_GLOBALS
//#import "Masonry.h"//这个类的导入必须写在这两个宏的下边equalTo才有宏效果

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    WS(ws);
//    
//    //基础1:居中显示一个view
//    UIView *sv = [UIView new];
////    [sv showPlaceHolder];
//    sv.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sv];
//    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(ws.view);
//        make.size.mas_equalTo(CGSizeMake(375, 375));
//    }];
//
///*
//    //基础2:让一个view略小于其supeerView(边距为10)
//    UIView *sv1 = [UIView new];
//    [sv1 showPlaceHolder];
//    sv1.backgroundColor = [UIColor redColor];
//    [sv addSubview:sv1];
//    
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
////        make.top.equalTo(sv).with.offset(10);
////        make.left.equalTo(sv).offset(10);
////        make.bottom.equalTo(sv).offset(-10);
////        make.right.equalTo(sv).offset(-10);
//        
////        make.top.left.bottom.and.right.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//        
//    }];
//*/
//    /*
//    //基础3:让两个高度为150的view垂直居中且等宽且等间距排列,间隔为10(自动计算器宽度)
//    UIView *sv2 = [UIView new];
//    [sv2 showPlaceHolder];
//    sv2.backgroundColor = [UIColor redColor];
//    [sv addSubview:sv2];
//    UIView *sv3 = [UIView new];
//    [sv3 showPlaceHolder];
//    sv3.backgroundColor = [UIColor redColor];
//    [sv addSubview:sv3];
//    
//    int padding1 = 10;
//    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv.mas_left).offset(padding1);
//        make.right.equalTo(sv3.mas_left).offset(-padding1);
//        make.height.mas_equalTo(@150);
//        make.width.equalTo(sv3);
//        
//    }];
//    
//    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv2.mas_right).offset(padding1);
//        make.right.equalTo(sv.mas_right).offset(-padding1);
//        make.height.mas_equalTo(sv2);
//        make.width.mas_equalTo(sv2);
//    }];
//    */
//    
    /*
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
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
    }];
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
        //把当前子视图设置为最后一个视图
        lastView = subv;
        
    }
    //container视图的底部在最后一个视图的底部
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.mas_bottom);
    }];
    */
//
//    UIView *sv11 = [UIView new];
//    UIView *sv12 = [UIView new];
//    UIView *sv13 = [UIView new];
//    UIView *sv21 = [UIView new];
//    UIView *sv31 = [UIView new];
//    sv11.backgroundColor = [UIColor redColor];
//    sv12.backgroundColor = [UIColor redColor];
//    sv13.backgroundColor = [UIColor redColor];
//    sv21.backgroundColor = [UIColor redColor];
//    sv31.backgroundColor = [UIColor redColor];
//    [sv addSubview:sv11];
//    [sv addSubview:sv12];
//    [sv addSubview:sv13];
//    [sv addSubview:sv21];
//    [sv addSubview:sv31];
//    
//    //给与不同的大小 测试效果
//    [sv11 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(@[sv12,sv13]);
//        make.centerX.equalTo(@[sv21,sv31]);
//        make.size.equalTo(CGSizeMake(40, 40));
//    }];
//    
//    [sv12 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.equalTo(CGSizeMake(70, 70));
//    }];
//    
//    [sv13 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.equalTo(CGSizeMake(50, 50));
//    }];
//    
//    [sv21 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.equalTo(CGSizeMake(50, 20));
//    }];
//    
//    [sv31 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.equalTo(CGSizeMake(40, 60));
//    }];
//    
//    [sv distributeSpacingHorizontallyWith:@[sv11,sv12,sv13]];
//    [sv distributeSpacingVerticallyWith:@[sv11,sv21,sv31]];
//    
//    [sv showPlaceHolderWithAllSubviews];
//    [sv showPlaceHolder];
//     
//    
//  
}




- (IBAction)buttonAction:(id)sender {
    ViewController44 *v44 = [[ViewController44 alloc] init];
    [self presentViewController:v44 animated:YES completion:nil];
}
@end
