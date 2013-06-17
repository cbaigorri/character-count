###
Author: Chris Baigorri - @cbaigorri
###

$ = jQuery

# class definition

CharacterCount = (element, options) ->
  @$element = $(element)
  @options = $.extend {}, $.fn.characterCount.defaults, @$element.data(), options
  @$element.bind 'keyup', $.proxy(@count, this)
  @$element.trigger 'keyup'
  return

CharacterCount::count = (e) ->
  $el = $(this)
  $(@options.counterDisplay).text(@options.maxChars - $(e.currentTarget).val().length);
  return


# plugin definition

$.fn.characterCount = (option) ->
  @each ->
    $this = $(this)
    data = $this.data('characterCount')
    options = typeof option == 'object' && option
    if  not data then $this.data 'characterCount', (data = new CharacterCount(this, options))
    return

$.fn.characterCount.defaults = {
  maxChars: 420
  , counterDisplay: $('#counter')
}

$.fn.characterCount.Constructor = CharacterCount
