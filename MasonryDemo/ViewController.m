//
//  ViewController.m
//  MasonryDemo
//
//  Created by CHANEL on 15/6/9.
//  Copyright (c) 2015年 CHANEL. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/MASConstraintMaker.h>
#import <Masonry/View+MASAdditions.h>
#import "CCSudokuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *bgButton = [[UIButton alloc] init];
//    [sv showPlaceHolder];
    bgButton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:bgButton];
    [bgButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    [bgButton addTarget:self action:@selector(gogogo) forControlEvents:UIControlEventTouchUpInside];
    
    CCSudokuView *sudokuView = [[CCSudokuView alloc] init];
    sudokuView.lineNumber = 5;
    sudokuView.columnNumber = 5;
    sudokuView.padding = 1;
    [sudokuView loadView];
    [bgButton addSubview:sudokuView];
    
    [sudokuView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(bgButton).insets(UIEdgeInsetsMake(5, 10, 15, 50)); //上左下右,数值为正则往里缩

    }];
    
    
    
    
    
    
//    UIView *sv1 = [[UIView alloc] init];
//    [sv addSubview:sv1];
//    sv1.backgroundColor = [UIColor yellowColor];
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(sv).insets(UIEdgeInsetsMake(5, 10, 15, 20)); //上左下右,数值为正则往里缩
//    }];
//    int padding1 = 3;
//    
//    int lineNumber = 3;   //行数
//    int columnNumber = 4;   //列数
//    for (int i=1; i <= lineNumber*columnNumber; i++) {
//        UIView *cellView = [[UIView alloc] init];
//        [bgButton addSubview:cellView];
//        cellView.tag = i;
//        cellView.backgroundColor = [UIColor orangeColor];
//        
//    }
//    
//    //i行数,j列数
//    for (int i=1; i<=lineNumber; i++) {
//        for (int j=1; j<=columnNumber; j++) {
//            UIView *currentView = [bgButton viewWithTag:(columnNumber*(i-1)+j)];
//            
//            [currentView mas_makeConstraints:^(MASConstraintMaker *make) {
//                
//                if (lineNumber == 1) {
//                    make.top.equalTo(bgButton.mas_top);
//                    make.bottom.equalTo(bgButton.mas_bottom);
//                }
//                else {
//                    if (i == 1) {
//                        make.top.equalTo(bgButton.mas_top);
//                        UIView *behindView = [bgButton viewWithTag:(columnNumber*i+j)];
//                        make.bottom.equalTo(behindView.mas_top).offset(-padding1);
//                        make.height.equalTo(behindView);
//                    }
//                    else if (i == lineNumber) {
//                        UIView *frontView = [bgButton viewWithTag:(columnNumber*(i-2)+j)];
//                        make.top.equalTo(frontView.mas_bottom).offset(padding1);
//                        make.bottom.equalTo(bgButton.mas_bottom);
//                        make.height.equalTo(frontView);
//                        
//                    }
//                    else {
//                        UIView *frontView = [bgButton viewWithTag:(columnNumber*(i-2)+j)];
//                        UIView *behindView = [bgButton viewWithTag:(columnNumber*i+j)];
//                        make.top.equalTo(frontView.mas_bottom).offset(padding1);
//                        make.bottom.equalTo(behindView.mas_top).offset(-padding1);
//                        make.height.equalTo(frontView);
//                    }
//                }
//                
//                if (columnNumber == 1) {
//                    make.left.equalTo(bgButton.mas_left);
//                    make.right.equalTo(bgButton.mas_right);
//                }
//                else {
//                    if (j == 1) {
//                        make.left.equalTo(bgButton.mas_left);
//                        UIView *behindView = [bgButton viewWithTag:(columnNumber*(i-1)+j+1)];
//                        make.right.equalTo(behindView.mas_left).offset(-padding1);
//                        make.width.equalTo(behindView);
//                    }
//                    else if (j == columnNumber) {
//                        UIView *frontView = [bgButton viewWithTag:(columnNumber*(i-1)+j-1)];
//                        make.left.equalTo(frontView.mas_right).offset(padding1);
//                        make.right.equalTo(bgButton.mas_right);
//                        make.width.equalTo(frontView);
//                        
//                    }
//                    else {
//                        UIView *frontView = [bgButton viewWithTag:(columnNumber*(i-1)+j-1)];
//                        UIView *behindView = [bgButton viewWithTag:(columnNumber*(i-1)+j+1)];
//                        make.left.equalTo(frontView.mas_right).offset(padding1);
//                        make.right.equalTo(behindView.mas_left).offset(-padding1);
//                        make.width.equalTo(frontView);
//                    }
//                }
//            }];
//        }
//    }
    
    
    
//    UIScrollView *scrollView = [UIScrollView new];
//    scrollView.backgroundColor = [UIColor whiteColor];
//    [sv1 addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(sv1).with.insets(UIEdgeInsetsMake(20,20,20, 20));
//    }];
//    
//    UIButton *container = [UIButton new];
//    [scrollView addSubview:container];
//    container.backgroundColor = [UIColor redColor];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
//        make.width.equalTo(scrollView);
//    }];
//
//    int count = 10;
//    
//    UIView *lastView = nil;
//    
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [container addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                               alpha:1];
//
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.and.right.equalTo(container);
//            make.height.mas_equalTo(@(20*i));
//            
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    
//    
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];
}

-(void) gogogo {
//    NSDictionary *dict = @{@"1":@"11", @"12":@"11", @"13":@"11", @"14":@"11", @"15":@"11", @"16":@"11", @"17":@"11", @"18":@"11", @"19":@"11", @"10":@"11", @"01":@"11", @"21":@"11", @"31":@"11", @"41":@"11", @"51":@"11", @"61":@"11", @"71":@"11", @"81":@"11", @"91":@"11", };
//    
//    UMSResultViewController *resultVC = [[UMSResultViewController alloc] init];
//    resultVC.resultDict = dict;
//    //    resultVC.Fun_Type = Fun_Type;
//    resultVC.result = @"下单(已过时) 失败";
//    [self.navigationController pushViewController:resultVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
