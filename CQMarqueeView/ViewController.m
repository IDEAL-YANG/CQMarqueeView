//
//  ViewController.m
//  CQMarqueeView
//
//  Created by 蔡强 on 2017/8/22.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "CQMarqueeView.h"

@interface ViewController ()<CQMarqueeViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CQMarqueeView *marqueeView = [[CQMarqueeView alloc] initWithFrame:CGRectMake(0, 90, self.view.frame.size.width, 30)];
    [self.view addSubview:marqueeView];
    marqueeView.marqueeText = @"李知恩，艺名IU，1993年5月16日出生于韩国首尔特别市，韩国女歌手、演员、主持人。";
    marqueeView.delegate = self;
}

// 跑马灯view上的关闭按钮点击时回调
- (void)marqueeView:(CQMarqueeView *)marqueeView closeButtonDidClick:(UIButton *)sender {
    [marqueeView removeFromSuperview];
    marqueeView = nil;
    NSLog(@"点击了关闭按钮");
}

@end
