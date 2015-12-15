;; lengthを末尾再帰で書いてみる
(define (length lis)
  (define (length-rec lis n)
    (if (null? lis)
	n
	(length-rec (cdr lis) (+ n 1))))
  (length-rec lis 0))

;; reverseを末尾再帰で書いてみる
(define (reverse lis)
  (define (reverse-rec lis now-lis)
    (cond
     ((null? lis) now-lis)
     (else
      (reverse-rec (cdr lis) (cons (car lis) now-lis)))))
  (reverse-rec lis '()))

;; 上記の２つの末尾再帰関数は両方とも引数が増えるので
;; ローカル手続きを定義している
