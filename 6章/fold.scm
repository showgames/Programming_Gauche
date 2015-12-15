;; foldを使って手続きを作る

(define (sum-of-numbers lis)
  (fold + 0 lis))

(define (product-of-numbers lis)
  (fold * 1 lis))


;; -inf.0 は負の無限大
(define (max-number lis)
  (define (pick-greater a b)
    (if (> a b) a b))
  (fold pick-greater -inf.0 lis))


;; もう一つのmax-number
(define (max-number lis)
  (define (pick-greater a b)
    (if (> a b) a b))
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold pick-greater (car lis) (cdr lis))))

(define (length lis)
  (define (increment2 a b) (+ b 1))
  (fold increment2 0 lis))


(define (print-elements lis)
  (define (print-one-element a b) (print a))
  (fold print-one-element #f lis))

;; 要素を逆向きにしたリスト返す
(fold cons '() '(a b c d e))
