(defun quicklearn (source-table bins percent)
(let (  (table (copy-table source-table)))
  (print "Filling in Unknowns")
  (setf table (fill-in table))
  (print "Nbins")
  (setf table (data
               :name (table-name table)
               :columns (columns-header (table-columns table))
               :klass (table-class table)
               :egs
               (nbins bins (get-data table))))
  (print "InfoGain")
  (setf table (infogain table percent))
  table))