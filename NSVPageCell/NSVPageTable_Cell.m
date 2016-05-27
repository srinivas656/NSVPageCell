//
//  NSVPageTable_Cell.m
//  NSVPageCell
//
//  Created by srinivas on 4/26/16.
//  Copyright © 2016 Microexcel. All rights reserved.
//

#import "NSVPageTable_Cell.h"

@implementation NSVPageTable_Cell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    _scView.backgroundColor = [UIColor redColor];
    [_scView setScrollEnabled:YES];
    [_scView setPagingEnabled:YES];
    _scView.showsVerticalScrollIndicator=YES;
    _scView.userInteractionEnabled=YES;
    _scView.delegate = self ;
    
   
    
    _pageController.transform = CGAffineTransformMakeScale(0.6, 0.4);
    _pageController.numberOfPages = _recipeImages.count ;
    
    
    int i = 10 ;
    for (id elemnt in _recipeImages) {
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(i,0,self.bounds.size.width-20, self.bounds.size.height-_pageController.frame.size.height)];
        img.backgroundColor = [UIColor greenColor];
        img.tag = [_recipeImages indexOfObject:elemnt];
        img.image = [UIImage imageNamed:elemnt];
        [_scView addSubview:img];
        i = i+self.bounds.size.width ;
    }
     [_scView setContentSize:CGSizeMake(_recipeImages.count* self.bounds.size.width,self.bounds.size.height-_pageController.frame.size.height-10)];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
   
    CGFloat pageWidth = scrollView.frame.size.width;
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    _pageController.currentPage = page ;
}
//- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
//    static NSInteger previousPage = 0;
//    CGFloat pageWidth = scrollView.frame.size.width;
//    float fractionalPage = scrollView.contentOffset.x / pageWidth;
//    NSInteger page = lround(fractionalPage);
//    if (previousPage != page) {
//        // Page has changed, do your thing!
//        // ...
//        // Finally, update previous page
//        previousPage = page;
//    }
//     _pageController.currentPage = page ;
//}

@end
