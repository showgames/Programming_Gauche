;; 可変長引数を取る手続き
(define (func a b . c) (print "a=" a", b=" b ", c=" c))

(define (func1 . a) (print a))

(define (func2 a) (print a))

;; listを自分で定義してみる
(define my-list
  (lambda a
    (cond
     ((null? a) '())
     (else
      a))))


