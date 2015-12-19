;; 数値とそれ以外のものが混ざっているリストを受け取り、
;; その中の数値だけについて手続きを適用する手続き

(define filter
  (lambda (con lis)
    (cond
     ((null? lis) '())
     ((con (car lis))
      (cons (car lis) (filter con (cdr lis))))
     (else
      (filter con (cdr lis))))))

(define (for-each-numbers proc lis)
  (for-each proc (filter number? lis)))


;; 数値だけにつ続きを適用してその結果をリストにする手続き

(define (map-numbers proc lis)
  (map proc (filter number? lis)))
