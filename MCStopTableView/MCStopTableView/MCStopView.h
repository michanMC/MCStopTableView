//
//  MCStopView.h
//  MCStopTableView
//
//  Created by MC on 16/3/30.
//  Copyright © 2016年 MC. All rights reserved.
//
#define Main_Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width       [[UIScreen mainScreen] bounds].size.width

#import <UIKit/UIKit.h>

@interface MCStopView : UIView

@property (nonatomic,assign)BOOL isStretch;
//@property (nonatomic,strong)UIImageView *headerImg;

-(instancetype)initWithFrame:(CGRect)frame HeaderViewHeight:(CGFloat)headerView_Height SegmentBarHeight:(CGFloat)segmentBarHeight HeaderView:(UIView*)headerView ContentViews:(NSArray*)contentViews SegmentsTitles:(NSArray*)segmentsTitles HeaderImg:(UIImageView*)headerImg;





@end
