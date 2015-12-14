(use srfi-1)

(define (check-num x)
  (cond [(zero? (modulo x 15)) 'FizzBuzz]
	[(zero? (modulo x 5)) 'Buzz]
	[(zero? (modulo x 3)) 'Fizz]
	[else x]))

(define (fizz-buzz check max)
  (map check (iota max 1)))
