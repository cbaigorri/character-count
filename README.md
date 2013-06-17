# Character count

A jQuery plugin to count down characters left in a text area 

## Instalation

Include script *after* the jQuery library:

    <script src="/path/to/jquery.charactercount.js"></script>

## Usage

Single field

    <textarea class="count-me" data-max-chars="420" data-counter-display="#counter"></textarea>
    <span id="counter"></span> characters left

    $('.count-me').characterCount();

Multiple fields

    <textarea class="count-me" data-max-chars="420" data-counter-display="#counter-1"></textarea>
    <span id="counter-1"></span> characters left
    <textarea class="count-me" data-max-chars="420" data-counter-display="#counter-2"></textarea>
    <span id="counter-2"></span> characters left

    $('.count-me').characterCount();


## Options

## Changelog

## Development

- Source hosted at [GitHub](https://github.com/cbaigorri/character-count)
- Report issues, questions, feature requests on [GitHub Issues](https://github.com/cbaigorri/character-count/issues)

## Authors

[Chris Baigorri](https://github.com/cbaigorri)

