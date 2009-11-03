(defun fixes (one tbl &optional (n 1))
  (if (null one) (eg-class (nth n (table-all tbl))) one))

(defun bayesies (one tbl)
  (if (eql (bayes-classify (eg-features one) (xindex tbl)) (eg-class one))
    1.0
    0.0))

(defun b-squared (tbl &key (percentile .20) (threshold .80)
                      (score (lambda (b r) (/ (* b b) (+ b r)))))
  (multiple-value-bind (tbl-best tbl-rest) (bore tbl :percentile percentile)
    (let ((acc-best 0)
          (acc-rest 0)
          (range-accs-best (make-hash-table))
          (range-accs-rest (make-hash-table)))
      (macrolet ((bayes-go (which-tbl which-acc which-range)
                   `(dolist (one (table-all ,which-tbl))
                      (let ((value (bayesies one ,which-tbl)))
                        (incf ,which-acc value)
                        (incf (gethash (eg-class one) ,which-range) value)))))
        (bayes-go tbl-best acc-best range-accs-best)
        (bayes-go tbl-rest acc-rest range-accs-rest))
      (flet ((scorep (tbl range-accs)
               (lambda (x y)
                 (> (funcall score (fixes (gethash (header-classp x) range-accs) tbl))
                    (funcall score (fixes (gethash (header-classp y) range-accs) tbl))))))
        (macrolet ((bs-subseq (tbl range-accs)
                     `(subseq (sort (table-columns ,tbl) (scorep ,tbl ,range-accs))
                              0 (* threshold (length (table-columns ,tbl))))))
          (values (bs-subseq tbl-best range-accs-best)
                  (bs-subseq tbl-rest range-accs-rest)))))))
