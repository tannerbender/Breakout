# Juicy Breakout
Juice it or Lose it
 * Color
  * tiles: e03131
  * paddle: f76707
  * ball: ffd43b
 * Tweening
  * Blocks and paddle appear
   * Plus random delay
 * Squeeze and stretch paddle
   ```




   ```
 * Scale the ball when it hits something
 
 * Ball rotates the direction it's going
 * Ball stretches based on its velocity
 * Ball wobbles after hitting
 * Add color wwhen it hits something
 * Scale the blocks when something is hit
 * Bounce the blocks when a block is hit
 * Sound
  * Paddle
  * Wall
  * Block
  * Music
 * Particles
  * Smoke on block
 * Block slowly goes away when hit
 * Block falls
 * Block spins
 * Block darkens
 * Block shatters
 * Confetti on paddle
 * Comet trail
 * Screen shake
        ```
        extends Camera2D

        export var decay_rate = 0.4
        export var max_offset = 20
        
        var _start_position
        var _trauma
        
        func _ready():
            _start_position = position
            _trauma = 0.0

        func _process(delta):   
            if _trauma > 0:
                _decay_trauma(delta)
                _apply_shake()
            
        func _decay_trauma(delta):
            var change = decay_rate * delta
            _trauma = max(_trauma - change, 0)
        
        func _apply_shake():
            var shake = _trauma * _trauma
            var o_x = max_offset * shake * _get_neg_or_pos_scalar()
            var o_y = max_offset * shake * _get_neg_or_pos_scalar()
            position = _start_position + Vector2(o_x, o_y)
        
        func _get_neg_or_pos_scalar():
            return rand_range(-1.0, 1.0)

        func add_trauma(amount):
            _trauma = min(_trauma + amount, 1)
        
        ```
 * Add eyes to the paddle
 * Eyes blink
 * Eyes watch the ball
 * Smile, frown
 * Flash background

