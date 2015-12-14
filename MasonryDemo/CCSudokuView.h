//
//  CCSudokuView.h
//  MasonryDemo
//
//  Created by CHANEL on 15/12/14.
//  Copyright © 2015年 CHANEL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCSudokuView : UIView

@property (nonatomic, assign) int lineNumber;   //行数
@property (nonatomic, assign) int columnNumber; //列数
@property (nonatomic, copy) NSString *cellClassName;    //单元格类名
@property (nonatomic, assign) int padding;  //单元格间隙

@end
