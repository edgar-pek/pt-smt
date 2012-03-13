(set-option :dl-compile-with-widening true)
(set-option :dl-unbound-compressor false)

(declare-fun l0 (Int Int) Bool)
(declare-fun l1 (Int Int) Bool)
(set-predicate-representation l0 interval_relation bound_relation)
(set-predicate-representation l1 interval_relation bound_relation)

(rule (forall ((m Int)) (l0 0 m)))
(rule (forall ((x0 Int) (x Int) (m Int))
              (=> (and (l0 x0 m) (= x (+ x0 1)) (<= x0 m)) (l0 x m))))
(rule (forall ((x Int) (m Int))
              (=> (and (l0 x m) (< m x)) (l1 x m))))
(query (exists ((y Int) (m Int)) (l1 y m)))
