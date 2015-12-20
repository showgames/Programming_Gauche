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

;; letrecはローカルな再帰手続きを書くために有用
(letrec ((sum (lambda (lis)
		(cond
		 ((null? lis) 0)
		 ((number? (car lis)) (+ (car lis) (sum (cdr lis))))
		 (else
		  (sum (cdr lis)))))))
  (sum '(1 3 #f 6 #t 9)))


(letrec ((even? (lambda (n)
		  (cond
		   ((= n 0) #t)
		   ((> n 0) (odd? (- n 1)))
		   (else
		    (odd? (+ n 1))))))
	 (odd? (lambda (n)
		 (cond
		  ((= n 0) #f)
		  ((> n 0) (even? (- n 1)))
		  (else
		   (even? (+ n 1)))))))
  (even? 10))


