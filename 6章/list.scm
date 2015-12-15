;; car, cdr, cons, null?, pair?を使って手続きを作る

(define (list? obj)
  (or (null? obj)
      (and (pair? obj) (list? (cdr obj)))))
