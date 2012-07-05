define (require, exports, module) ->
  Spine = require 'Spine'
  $ = require 'jQuery'

  template = require 'views/FieldGuide'

  Pager = require 'zooniverse/controllers/Pager'
  SpectrogramPlayer = require 'controllers/SpectrogramPlayer'

  class FieldGuide extends Spine.Controller
    className: 'field-guide'
    template: template

    constructor: ->
      super
      @html @template

      for pageContainer in @el.find('[data-page]').parent()
        new Pager el: pageContainer

      for container in @el.find '.sample'
        container = $(container)
        audio = container.find('[data-audio-src]').attr 'data-audio-src'
        image = container.find('img').attr 'src'

        new SpectrogramPlayer {el: container, image, audio}

  module.exports = FieldGuide
