<?php

// https://mlocati.github.io/php-cs-fixer-configurator/

$rules = [
    '@PSR1' => true,
    '@PSR2' => true,

    'array_syntax' => ['syntax' => 'short'],
    'no_multiline_whitespace_before_semicolons' => true,
    'no_short_echo_tag' => true,
    'no_unused_imports' => true,
    'ordered_imports' => true,
    'not_operator_with_successor_space' => true,
    'array_indentation' => false, // this causes trouble when chaining calls that are passed an array argument
    'binary_operator_spaces' => ['default' => 'single_space'],
    'cast_spaces' => ['space' => 'single'],
    'no_short_bool_cast' => true,
    'visibility_required' => ['property'], // test methods are written without declaring visibility
    'method_chaining_indentation' => true,
    'no_trailing_comma_in_singleline_array' => true,
    'trailing_comma_in_multiline_array' => true,
    'single_quote' => true,
];

return PhpCsFixer\Config::create()
    ->setUsingCache(false)
    ->setRiskyAllowed(true)
    ->setRules($rules);
