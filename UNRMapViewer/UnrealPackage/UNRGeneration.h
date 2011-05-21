//
//  UNRGeneration.h
//  UnrealPackageExporter
//
//  Created by Andrew Dudney on 3/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DataManager.h"

@interface UNRGeneration : NSObject {
	
}

+ (id)generationWithManager:(DataManager *)manager;

@property(nonatomic, assign) int objectCount, nameCount;

@end
