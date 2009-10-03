;;; Binlogging: Observe the number of distinct rows.  Take this number and do the log() of it.  This is N.
;;;   Iterate over each of the numeric columns, row by row.  Take the numeric value, and we replace it with
;;;   the value defined by the function newX = round(N * (oldX - min)/(max - min)), where oldX is the value of the
;;;   the present row's value for the selected column.  Min and Max are the minimum and maximum values of
;;;   the selected column.  Repeat this for all numeric columns, the structure of the data should remain unaltered,
;;;   but the meaning of the column has changed.  There should be a key on the function for the precision of the
;;;   rounding function.

;;; Claimee: Elijah

(defun binlogging (data &key precision)
  data
)