/*
 SMMedication.h
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

@class SMCode, SMCodedValue, SMFulfillment, SMMedicalRecord, SMValueAndUnit;


/**
 *  A class representing "http://smartplatforms.org/terms#Medication" objects, generated from the SMART ontology.
 */
@interface SMMedication : SMBaseDocument

/// Representing http://smartplatforms.org/terms#belongsTo as SMMedicalRecord
@property (nonatomic, strong) SMMedicalRecord *belongsTo;

/// Representing http://smartplatforms.org/terms#drugName as SMCodedValue
@property (nonatomic, strong) SMCodedValue *drugName;

/// Representing http://smartplatforms.org/terms#endDate as NSString
@property (nonatomic, copy) NSString *endDate;

/// Representing http://smartplatforms.org/terms#frequency as SMValueAndUnit
@property (nonatomic, strong) SMValueAndUnit *frequency;

/// Representing http://smartplatforms.org/terms#fulfillment as SMFulfillment
@property (nonatomic, copy) NSArray *fulfillment;

/// Representing http://smartplatforms.org/terms#instructions as NSString
@property (nonatomic, copy) NSString *instructions;

/// Representing http://smartplatforms.org/terms#provenance as SMCode
@property (nonatomic, copy) NSArray *provenance;

/// Representing http://smartplatforms.org/terms#quantity as SMValueAndUnit
@property (nonatomic, strong) SMValueAndUnit *quantity;

/// Representing http://smartplatforms.org/terms#startDate as NSString
@property (nonatomic, copy) NSString *startDate;


@end
