(define square-sum
  (lambda (a b)
    (+ (* a a) (* b b))))

(define (length lis)
  (fold (lambda (a b) (+ b 1)) 0 lis))


(define (max-number lis)
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold (lambda (a b) (if (> a b) a b)) (car lis) (cdr lis))))

(define (print-elements lis)
  (fold (lambda (a b) (print a)) #f lis))


(define (reverse lis)
  (fold (lambda (a b) (cons a b)) '() lis))

)
