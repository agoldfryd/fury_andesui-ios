//
//  AndesTextFieldDelegate.swift
//  AndesUI
//
//  Created by Nicolas Rostan Talasimov on 3/31/20.
//

import Foundation
/// Delegation of AndesTextField behaviour
@objc public protocol AndesTextFieldDelegate {
    /// Called directly from UITextField ShouldBeginEditing
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldShouldBeginEditing(_ textField: AndesTextField) -> Bool

    /// Called directly from UITextField ShouldEndEditing
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldShouldEndEditing(_ textField: AndesTextField) -> Bool

    /// Called directly from UITextField didBeginEditing
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldDidBeginEditing(_ textField: AndesTextField)

    /// Called directly from UITextField DidEndEditing
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldDidEndEditing(_ textField: AndesTextField)

    /// Called directly from UITextField shouldChangeCharactersIn
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextField(_ textField: AndesTextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool

    /// Called directly from UITextField didChangeSelection
    /// - Parameter textField: the textfield that's triggering the event
    @available(iOS 13, *)
    @objc optional func andesTextFieldDidChangeSelection(_ textField: AndesTextField, selectedRange range: UITextRange?)

    /// Called directly from UITextField didChange action
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldDidChange(_ textField: AndesTextField)

    /// Called on action button touched up
    /// - Parameter textField: the textfield that's triggering the event
    @objc optional func andesTextFieldDidTapRightAction(_ textField: AndesTextField)
}
