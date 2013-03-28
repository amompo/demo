# http://blog.waymondo.com/2012-12-18-ember-dot-js-and-rails-authentication-gotchas/
$ ->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter (options, originalOptions, xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', token)
