/*
 SMLabPanel.h
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

@class SMCodedValue, SMLabResult, SMMedicalRecord;


/**
 *  A class representing "http://smartplatforms.org/terms#LabPanel" objects, generated from the SMART ontology.
 */
@interface SMLabPanel : SMBaseDocument

/// Representing http://smartplatforms.org/terms#belongsTo as SMMedicalRecord
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://smartplatforms.org/terms#labName as SMCodedValue
@property (nonatomic, strong) SMCodedValue *labName;

/// Representing http://smartplatforms.org/terms#labResult as SMLabResult
@property (nonatomic, copy) NSArray *labResult;


@end
