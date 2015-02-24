//
//  EasyViewLayout.swift
//  Yoke
//
//  Created by Marcio R. Arantes on 2/23/15.
//  Copyright (c) 2015 Creative Lenses. All rights reserved.
//

//Operators
/*
>= GreaterThanOrEqual relation
<= LessThanOrEqual relation
== Equal relation
= Used to assign width or height
*/

import UIKit

infix operator + {}
infix operator |>=| {}
infix operator |<=| {}
infix operator |==| {}
infix operator |=| {}

func +(tuple:(UIView, NSLayoutAttribute), c:CGFloat) -> (UIView, NSLayoutAttribute, CGFloat) {
    return (tuple.0, tuple.1, c)
}

func |==|(lhs:(UIView, NSLayoutAttribute), rhs:(UIView, NSLayoutAttribute, CGFloat)) {
    if applyToSuperView(firstView: lhs.0, rhs.0){
        if let superView = rhs.0.superview{
            superView.addConstraint(NSLayoutConstraint(
                item:lhs.0,
                attribute:lhs.1,
                relatedBy:.Equal,
                toItem:rhs.0,
                attribute:rhs.1,
                multiplier:1,
                constant:rhs.2 ))
        }
    }
    else {
        rhs.0.addConstraint(NSLayoutConstraint(
            item:lhs.0,
            attribute:lhs.1,
            relatedBy:.Equal,
            toItem:rhs.0,
            attribute:rhs.1,
            multiplier:1,
            constant:rhs.2 ))
    }
}

func |>=|(lhs:(UIView, NSLayoutAttribute), rhs:(UIView, NSLayoutAttribute, CGFloat)) {
    if applyToSuperView(firstView: lhs.0, rhs.0){
        if let superView = rhs.0.superview{
            superView.addConstraint(NSLayoutConstraint(
                item:lhs.0,
                attribute:lhs.1,
                relatedBy:.GreaterThanOrEqual,
                toItem:rhs.0,
                attribute:rhs.1,
                multiplier:1,
                constant:rhs.2 ))
        }
    }
    else {
        rhs.0.addConstraint(NSLayoutConstraint(
            item:lhs.0,
            attribute:lhs.1,
            relatedBy:.GreaterThanOrEqual,
            toItem:rhs.0,
            attribute:rhs.1,
            multiplier:1,
            constant:rhs.2 ))
    }
}

func |<=|(lhs:(UIView, NSLayoutAttribute), rhs:(UIView, NSLayoutAttribute, CGFloat)) {
    if applyToSuperView(firstView: lhs.0, rhs.0){
        if let superView = rhs.0.superview{
            superView.addConstraint(NSLayoutConstraint(
                item:lhs.0,
                attribute:lhs.1,
                relatedBy:.LessThanOrEqual,
                toItem:rhs.0,
                attribute:rhs.1,
                multiplier:1,
                constant:rhs.2 ))
        }
    }
    else {
        rhs.0.addConstraint(NSLayoutConstraint(
            item:lhs.0,
            attribute:lhs.1,
            relatedBy:.LessThanOrEqual,
            toItem:rhs.0,
            attribute:rhs.1,
            multiplier:1,
            constant:rhs.2 ))
    }
}


func |=|(lhs:(UIView, NSLayoutAttribute), rhs:(CGFloat)) {
    lhs.0.addConstraint(NSLayoutConstraint(
        item:lhs.0,
        attribute:lhs.1,
        relatedBy:.Equal,
        toItem:nil,
        attribute:lhs.1,
        multiplier:1,
        constant:rhs.0 ))
}

private func applyToSuperView(#firstView: UIView, secondView: UIView) -> Bool{
    return firstView.superview == secondView.superview
}

func height (v: UIView) -> (UIView, NSLayoutAttribute) { return (v, .Height) }
func width (v: UIView) -> (UIView, NSLayoutAttribute) { return (v, .Width) }
func left (v: UIView) -> (UIView, NSLayoutAttribute) { return (v, .Left) }
func right (v: UIView) -> (UIView, NSLayoutAttribute) { return (v, .Right) }
func centerX (v:UIView) -> (UIView, NSLayoutAttribute) { return (v, .CenterX) }
func centerY (v:UIView) -> (UIView, NSLayoutAttribute) { return (v, .CenterY) }
func top (v:UIView) -> (UIView, NSLayoutAttribute) { return (v, .Top) }
func bottom (v:UIView) -> (UIView, NSLayoutAttribute) { return (v, .Bottom) }