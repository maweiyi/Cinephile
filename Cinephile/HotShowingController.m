//
//  HotShowingController.m
//  Cinephile
//
//  Created by 麻炜怡 on 11/16/15.
//  Copyright © 2015 Weiyi Ma. All rights reserved.
//

#import "HotShowingController.h"
#import "HotShowingCollectionViewCell.h"

static NSString *CellIdentifier = @"Cell Identifier";

@interface HotShowingController () {
    
    
}

@end

@implementation HotShowingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    //flowLayout.minimumInteritemSpacing = 20;
    
    flowLayout.minimumLineSpacing = 60.0f;
    
    NSLog(@"%lf", [UIScreen mainScreen].bounds.size.width / 3);
    flowLayout.itemSize = CGSizeMake(106, 100);
    
    
    [self.collectionView registerClass:[HotShowingCollectionViewCell class] forCellWithReuseIdentifier:CellIdentifier];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HotShowingCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
    
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
