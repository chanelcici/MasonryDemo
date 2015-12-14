//
//  CCSudokuView.m
//  MasonryDemo
//
//  Created by CHANEL on 15/12/14.
//  Copyright © 2015年 CHANEL. All rights reserved.
//

#import "CCSudokuView.h"
#import <Masonry/MASConstraintMaker.h>
#import <Masonry/View+MASAdditions.h>

@implementation CCSudokuView

@synthesize lineNumber, columnNumber, padding;

-(id) init {
    self = [super init];
    if (self) {
        if (!lineNumber) {
            lineNumber = 1;
        }
        if (!columnNumber) {
            columnNumber = 1;
        }
        if (!padding) {
            padding = 0;
        }
        
    }
    return self;
}

-(void) loadView {
    if (lineNumber > 0 && columnNumber > 0 && padding >= 0) {
        for (int i=1; i <= lineNumber*columnNumber; i++) {
            UIView *cellView = [[UIView alloc] init];
            [self addSubview:cellView];
            cellView.tag = i;
            cellView.backgroundColor = [UIColor orangeColor];
            
        }
        
        //i行数,j列数
        for (int i=1; i<=lineNumber; i++) {
            for (int j=1; j<=columnNumber; j++) {
                UIView *currentView = [self viewWithTag:(columnNumber*(i-1)+j)];
                
                [currentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    
                    if (lineNumber == 1) {
                        make.top.equalTo(self.mas_top);
                        make.bottom.equalTo(self.mas_bottom);
                    }
                    else {
                        if (i == 1) {
                            make.top.equalTo(self.mas_top);
                            UIView *behindView = [self viewWithTag:(columnNumber*i+j)];
                            make.bottom.equalTo(behindView.mas_top).offset(-padding);
                            make.height.equalTo(behindView);
                        }
                        else if (i == lineNumber) {
                            UIView *frontView = [self viewWithTag:(columnNumber*(i-2)+j)];
                            make.top.equalTo(frontView.mas_bottom).offset(padding);
                            make.bottom.equalTo(self.mas_bottom);
                            make.height.equalTo(frontView);
                            
                        }
                        else {
                            UIView *frontView = [self viewWithTag:(columnNumber*(i-2)+j)];
                            UIView *behindView = [self viewWithTag:(columnNumber*i+j)];
                            make.top.equalTo(frontView.mas_bottom).offset(padding);
                            make.bottom.equalTo(behindView.mas_top).offset(-padding);
                            make.height.equalTo(frontView);
                        }
                    }
                    
                    if (columnNumber == 1) {
                        make.left.equalTo(self.mas_left);
                        make.right.equalTo(self.mas_right);
                    }
                    else {
                        if (j == 1) {
                            make.left.equalTo(self.mas_left);
                            UIView *behindView = [self viewWithTag:(columnNumber*(i-1)+j+1)];
                            make.right.equalTo(behindView.mas_left).offset(-padding);
                            make.width.equalTo(behindView);
                        }
                        else if (j == columnNumber) {
                            UIView *frontView = [self viewWithTag:(columnNumber*(i-1)+j-1)];
                            make.left.equalTo(frontView.mas_right).offset(padding);
                            make.right.equalTo(self.mas_right);
                            make.width.equalTo(frontView);
                            
                        }
                        else {
                            UIView *frontView = [self viewWithTag:(columnNumber*(i-1)+j-1)];
                            UIView *behindView = [self viewWithTag:(columnNumber*(i-1)+j+1)];
                            make.left.equalTo(frontView.mas_right).offset(padding);
                            make.right.equalTo(behindView.mas_left).offset(-padding);
                            make.width.equalTo(frontView);
                        }
                    }
                }];
            }
        }
    }
}


@end
