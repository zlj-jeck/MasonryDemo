//
//  ViewController2.m
//  MasonryDemo
//
//  Created by chen on 16/5/18.
//  Copyright © 2016年 jeck. All rights reserved.
//

#import "ViewController2.h"
#import "MMPlaceHolder.h"

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"//这个类的导入必须写在这两个宏的下边equalTo才有宏效果

@interface ViewController2 ()

@end

@implementation ViewController2

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
    //基础2:让一个view略小于其supeerView(边距为10)
    UIView *sv1 = [UIView new];
    [sv1 showPlaceHolder];
    sv1.backgroundColor = [UIColor redColor];
    [sv addSubview:sv1];
    
    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        //        make.top.equalTo(sv).with.offset(10);
        //        make.left.equalTo(sv).offset(10);
        //        make.bottom.equalTo(sv).offset(-10);
        //        make.right.equalTo(sv).offset(-10);
        
        //        make.top.left.bottom.and.right.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        
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
