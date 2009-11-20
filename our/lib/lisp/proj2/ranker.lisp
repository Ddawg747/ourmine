(defun extract-best-cols (attranks dataset n)
  (let ((classindx (- (length (car dataset)) 1))
	(out))
    (setf attranks (sort attranks #'> :key #'car))
    (dotimes (i n)
      (setf out (append out (list (cdr (nth i attranks))))))
    (setf out (append out (list classindx)))
    (setf out (sort out #'<))))
   

(defun prune-cols (colnums data)
  (let ((pruned)
	(tmp))
    (dolist (row data pruned)
      (setf tmp '())
      (dolist (col colnums)
	(setf tmp (append tmp (list (nth col row)))))
      (setf pruned (append pruned (list tmp))))))

;;works on lists
(defun rank-via-infogain (dataset &optional (n (/ (length (car dataset)) 2)))
  (let* ((scores (infogain dataset))
        (colnums (extract-best-cols scores dataset n))
        (result (prune-cols colnums dataset)))
    (values colnums result)))

;;on tables
(defun infogain-table (table n)
  (multiple-value-bind (colnums insts)
      (rank-via-infogain (table-egs-to-lists table) n)
    (let ((cols)) 
      (dolist (col colnums)
        (setf cols (append cols (list (nth col (table-columns table))))))
      (make-simple-table 'infogain-res-table cols insts))))
    
    

