;; for-eachは要素に手続きを適用した結果を捨ててしまう
;; 結果が必要な場合 -> map

(map (lambda (x) (* x 2)) '(1 2 3 4))

;; 渡されたリストを逆順にして手続きを適用する
(define (reverse-map proc lis)
  (map proc (reverse lis)))


;; lambdaを使って書いてみる
(define reverse-map
  (lambda (proc lis)
    (map proc (reverse lis))))

;; 上記の関数でmap や for-eachを引数にして外から与える
;; そうすると新たに作った手続きを返すことができる

(define (reversed walker)
  (lambda (proc lis)
    (walker proc (reverse lis))))
