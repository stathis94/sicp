#lang sicp

(define nil '())

(define (square x) (* x x))

(define (tree-map proc tree)
  (map (lambda (sub-tree) (if (not (pair? sub-tree))
                              (proc sub-tree)
                              (tree-map proc sub-tree))) tree))

(define (square-tree tree) (tree-map square tree))

(list 1 (list 2 (list 3 4) 5) (list 6 7))
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))