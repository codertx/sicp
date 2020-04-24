(define (tree-map f tree)
    (map (lambda (sub-tree)
            (cond ((pair? sub-tree) (tree-map f sub-tree))
                  (else (f sub-tree))))
        tree))

(define (square-tree tree) (tree-map square tree))
