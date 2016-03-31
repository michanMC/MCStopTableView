//
//  ViewController.m
//  MCStopTableView
//
//  Created by MC on 16/3/30.
//  Copyright © 2016年 MC. All rights reserved.
//
#define KHeaderViewHeight  200
#define KSegmentBarHeight  44

#import "ViewController.h"
#import "MCStopView.h"
#import "MCTableViewController.h"
#import "MCContentCollectionView.h"
#import "UINavigationBar+Background.h"
@interface ViewController ()
{
    MCTableViewController * TableView;
    MCTableViewController * TableView2;

    MCContentCollectionView * CollectionView;
    UIImageView *imgview ;
}

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;//导航栏的背景色是黑色, 字体为白色
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];//用于去除导航栏的底线，也就是周围的边线
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar cnReset];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar cnSetBackgroundColor:[UIColor clearColor]];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"导航条";
    
    MCStopView * stopView = [[MCStopView alloc]initWithFrame:CGRectMake(0, 0,Main_Screen_Width , Main_Screen_Height) HeaderViewHeight:KHeaderViewHeight SegmentBarHeight:KSegmentBarHeight HeaderView:[self prepareHeaderView] ContentViews:[self prepareContentViews] SegmentsTitles:@[@"Seg1",@"Seg2",@"Seg3"] HeaderImg:imgview];
    
    
    [self.view addSubview:stopView];
    
    
    
    
    
}
-(UIView*)prepareHeaderView{
    
     UIView * headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, KHeaderViewHeight)];
//    headerView.backgroundColor = [UIColor redColor];
   imgview = [[UIImageView alloc]initWithFrame:headerView.bounds];
    imgview.image = [UIImage imageNamed:@"8d82c08430e7780d5c257ddb1b1401b8.jpg"];
    [headerView addSubview:imgview];
    imgview.tag = 100;
    return headerView;
    
}
-(NSMutableArray*)prepareContentViews{
    NSMutableArray * array = [NSMutableArray
                              array];
    TableView = [MCTableViewController contentTableViewFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height  - KSegmentBarHeight - 64)];
    [array addObject:TableView];
    
    CollectionView = [MCContentCollectionView contentCollectionViewFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height  - KSegmentBarHeight - 64)];
    [array addObject:CollectionView];
    
    
    
    TableView2 = [MCTableViewController contentTableViewFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height  - KSegmentBarHeight - 64)];
    [array addObject:TableView2];
    return array;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
