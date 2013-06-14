/*
 SMClinicalNote.h
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-06-14.
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

@class SMCodedValue, SMMediaTypeOrExtent, SMMedicalRecord, SMProvider, SMResource, SMValueAndUnit;


/**
 *  A class representing "http://smartplatforms.org/terms#ClinicalNote" objects, generated from the SMART ontology.
 */
@interface SMClinicalNote : SMBaseDocument

/// Representing http://smartplatforms.org/terms#belongsTo as SMMedicalRecord
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://purl.org/dc/terms/date as NSString
@property (nonatomic, copy) NSString *date;

/// Representing http://smartplatforms.org/terms#documentType as SMCodedValue
@property (nonatomic, copy) NSArray *documentType;

/// Representing http://smartplatforms.org/terms#fileName as NSString
@property (nonatomic, copy) NSString *fileName;

/// Representing http://smartplatforms.org/terms#fileSize as SMValueAndUnit
@property (nonatomic, strong) SMValueAndUnit *fileSize;

/// Representing http://purl.org/dc/terms/format as SMMediaTypeOrExtent
@property (nonatomic, strong) SMMediaTypeOrExtent *format;

/// Representing http://smartplatforms.org/terms#provider as SMProvider
@property (nonatomic, strong) SMProvider *provider;

/// Representing http://smartplatforms.org/terms#resource as SMResource
@property (nonatomic, copy) NSArray *resource;

/// Representing http://purl.org/dc/terms/title as NSString
@property (nonatomic, copy) NSString *title;


@end
