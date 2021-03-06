$ ->
  $('#page.login').each ->
    animate = (dude, steps) ->
      return unless dude.length > 0
      step = 1
      start = dude.css 'background-position'
      l = ->
        if step++ < steps
          dude.css 'background-position', (i, old) ->
            [ x, y ] = old.split ' '
            "#{parseInt(x) - 80}px #{y}"
        else
          dude.css 'background-position', start
          step = 1
        setTimeout l, 400
      l()

    animate $('.dude.beast', this), 4
    animate $('.dude.littleguy', this), 2
