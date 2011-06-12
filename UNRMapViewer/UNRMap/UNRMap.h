//
//  UNRMap.h
//  UNRMapViewer
//
//  Created by Andrew Dudney on 5/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UNRFile, UNRNode;

@interface UNRMap : NSObject {
	
}

- (id)initWithModel:(NSMutableDictionary *)model andFile:(UNRFile *)file;
- (void)draw:(float)aspect;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;

@property(nonatomic, retain) UNRNode *rootNode;
@property(nonatomic, retain) NSMutableDictionary *textures;
@property(nonatomic, retain) NSMutableDictionary *shaders;
@property(nonatomic, retain) NSMutableArray *lightMaps;

@end
