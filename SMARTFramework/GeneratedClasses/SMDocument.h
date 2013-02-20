/*
 SMDocument.h
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-02-20.
 Copyright (c) 2013 CHIP, Boston Children's Hospital
 
 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.
 
 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

#import "SMBaseDocument.h"

@class SMDocumentWithFormat, SMMedicalRecord, SMProvider, SMResource, SMValueAndUnit;


/**
 *  A class representing "http://smartplatforms.org/terms#Document" objects, generated from the SMART ontology.
 */
@interface SMDocument : SMBaseDocument

/// Representing http://smartplatforms.org/terms#belongsTo
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://smartplatforms.org/terms#classification
@property (nonatomic, copy) NSArray *classification;

/// Representing http://purl.org/dc/terms/date
@property (nonatomic, copy) NSString *date;

/// Representing http://smartplatforms.org/terms#fileName
@property (nonatomic, copy) NSString *fileName;

/// Representing http://smartplatforms.org/terms#fileSize
@property (nonatomic, copy) NSArray *fileSize;

/// Representing http://purl.org/dc/terms/hasFormat
@property (nonatomic, copy) NSArray *hasFormat;

/// Representing http://smartplatforms.org/terms#provider
@property (nonatomic, strong) SMProvider *provider;

/// Representing http://smartplatforms.org/terms#resource
@property (nonatomic, copy) NSArray *resource;

/// Representing http://purl.org/dc/terms/title
@property (nonatomic, copy) NSString *title;


@end
