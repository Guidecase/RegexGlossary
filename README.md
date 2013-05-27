# Earlydoc Regular Expression Glossary

This gem contains a module of regular expressions objects for consistent validation and business logic.

Expressions
===========

    RegexGlossary::Email
    RegexGlossary::EmailList
    RegexGlossary::DutchPostalCode

Usage
===========

For example, to use with model validation require the library and reference one of the expression constants:

    require "regex_glossary"

    ...

    validates_format_of :email, :with => RegexGlossary::Email