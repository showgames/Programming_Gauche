;; for-eachは要素に手続きを適用した結果を捨ててしまう
;; 結果が必要な場合 -> map

(map (lambda (x) (* x 2)) '(1 2 3 4))

;; 渡されたリストを逆順にして手続きを適用する
(define (reverse-map proc lis)
  (map proc (reverse lis)))

