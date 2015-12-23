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
#import "CCSudokuGrid.h"

@interface ViewController () <CCSudokuViewDelegate>

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
    
    CCSudokuView *sudokuView = [[CCSudokuView alloc] initWithFrame:CGRectMake(0, 1, 300, 298)];
    sudokuView.rowNumber = 4;
    sudokuView.columnNumber = 4;
    sudokuView.padding = 1;
    sudokuView.gridArray = [NSArray arrayWithObjects:
                            @"1", @"2", @"3", @"del",
                            @"4", @"5", @"6", @"",
                            @"7", @"8", @"9", @"",
                            @".", @"0", @"+", @"",  nil];
    sudokuView.delegate = self;
    [sudokuView loadView];
    [bgButton addSubview:sudokuView];
    
    
//    [sudokuView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(bgButton).insets(UIEdgeInsetsMake(5, 10, 15, 50)); //上左下右,数值为正则往里缩
//
//    }];
    
    
    

    
    
    
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

- (void)gridAction:(GridType)type text:(NSString *)text {
    NSLog(@"grid按钮按下");
    switch (type) {
        case GridTypeNumber:
            
            break;
        case GridTypeDelete:
            
            break;
        case GridTypeDot:
            
            break;
        case GridTypeAdd:
            
            break;
        case GridTypeSubtract:
            
            break;
        case GridTypeMultiply:
            
            break;
        case GridTypeDivide:
            
            break;
        case GridTypeEqual:
            
            break;
            
            
        default:
            break;
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
