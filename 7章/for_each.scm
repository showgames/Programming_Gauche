;; 手続きを取る手続き

(for-each (lambda (x) (print "> " x)) '(a b c))


(define (tree-walk walker proc tree)
  (walker (lambda (elt)
	    (if (list? elt)
		(tree-walk walker proc elt)
		(proc elt)))
	  tree))


(define (reverse-for-each proc lis)
  (for-each proc (reverse lis)))


;; reverse-for-eachをtree-walkの引数にする
(tree-walk reverse-for-each print '((a b c) d e))

