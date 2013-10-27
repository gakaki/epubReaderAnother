//
//  AePubReaderAppDelegate.h
//  AePubReader
//
//  Created by Federico Frappi on 04/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class EPubViewController;
@class SWRevealViewController;
@class ChapterListViewController;


@interface AePubReaderAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
        
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (strong, nonatomic) SWRevealViewController *viewController;


@property (nonatomic, retain) IBOutlet EPubViewController *detailViewController;

@property (nonatomic, retain) IBOutlet ChapterListViewController *chapterListViewController;


@end
