define (require, exports, module) ->
  module.exports = '''
    <div class="high cover">
      <button class="delete">&times;</button>
      <div class="handle"></div>
    </div>

    <div class="low cover">
      <div class="handle"></div>
    </div>

    <div class="times">
      <div class="start handle"></div>
      <div class="end handle"></div>
    </div>
  '''
