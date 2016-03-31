//
//  MCContentCollectionView.m
//  MCStopTableView
//
//  Created by MC on 16/3/30.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MCContentCollectionView.h"

@interface MCContentCollectionView ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end


@implementation MCContentCollectionView





static NSString *collectionViewCellIdentifier = @"collectionViewCell";

+ (MCContentCollectionView *)contentCollectionViewFrame:(CGRect)frame {
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    layout.itemSize = CGSizeMake(100, 100);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    MCContentCollectionView *collectionView = [[MCContentCollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor clearColor];
    collectionView.dataSource = collectionView;
    collectionView.delegate = collectionView;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionViewCellIdentifier];
    
    return collectionView;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = (UICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
    
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
