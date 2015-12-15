;; 空でないリストの最後の対を見つける手続き
(define (last-pair lis)
  (if (pair? (cdr lis))
      (last-pair (cdr lis))
      lis))

;; リストをコピーする手続き
(define (copy-list lis)
  (if (pair? lis)
      (cons (car lis) (copy-list (cdr lis)))
      lis))

;; 2つのリストを連結する手続き
(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b))
      b))

;; リストの要素を逆転する手続き
(define (reverse lis)
  (fold cons '() lis))

;; 別解
(define (reverse lis)
  (if (null? (cdr lis))
      lis
      (append2 (reverse (cdr lis)) (list (car lis)))))
