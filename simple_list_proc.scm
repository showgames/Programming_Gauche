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

;; リストから条件を満たす要素をひとつ返す手続き
(define (find pred lis)
  (if (null? lis)
      #f
      (if (pred (car lis))
	  (car lis)
	  (find pred (cdr lis)))))

;; ifではなくcondを使って書いてみる
(define (find pred lis)
  (cond
   ((null? lis) #f)
   ((pred (car lis)) (car lis))
   (else
    (find pred (cdr lis)))))

;; リストの長さ
(define (length lis)
  (cond
   ((null? lis) 0)
   (else
    (+ 1 (length (cdr lis))))))

;; リストの中から、条件を満たす要素だけを抜き出したリストを返す
(define (filter pred lis)
  (cond
   ((null? lis) '())
   ((pred (car lis))
    (cons (car lis) (filter pred (cdr lis))))
   (else
    (filter pred (cdr lis)))))


;; 末尾再帰で length を書いてみる
(define (length lis)
  (define (length-rec lis n)
    (if (null? lis)
	n
	(length-rec (cdr lis) (+ n 1))))
  (length-rec lis 0))

