//
//  UNRMesh.h
//  UNRMapViewer
//
//  Created by Andrew Dudney on 7/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

#import "Matrix3D.h"
#import "Vector4D.h"
#import "Vector3D.h"
#import "Vector2D.h"
#import "UNRFrustum.h"

typedef struct{
	GLuint *vbos; //one for each frame
	//other needed data
}UNRMesh;

UNRMesh *UNRMeshCreate(NSMutableDictionary *lodMesh);

void UNRMeshDraw(UNRMesh *mesh, Matrix3D mat, UNRFrustum frustum);

void UNRMeshDelete(UNRMesh *mesh);