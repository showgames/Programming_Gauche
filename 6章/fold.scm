;; foldを使って手続きを作る

(define (sum-of-numbers lis)
  (fold + 0 lis))

(define (product-of-numbers lis)
  (fold * 1 lis))
