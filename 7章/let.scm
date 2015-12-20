(let ((a 3)
      (b 4))
  (+ (* a a) (* b b)))


;; 上の式をlambdaを使って書く
((lambda (a b) (+ (* a a) (* b b))) 3 4)

;; letをネストする
(let ((a 3)
      (b 4))
  (let ((a b)
	(b a))
    (cons a b)))


(let ((x (print 1))
      (y (print 2)))
  (print 3))


(letrec ((a 1)
	 (b (lambda (x) (+ a x))))
  (b 4))
