(begin
  (define pp (bhammer READS))
  (define kval (get best_k (kmergenie READS)))
  (define vt (begin (setparam hash_length kval) (velvet pp)))
  (define ki (begin (setparam k kval) (kiki pp)))
  (define sp (spades pp))
  (define id (idba pp))
  (define ma (masurca pp))
  (define di (discovar pp))
  (define allsort (sort (list sp id vt ki ma di) > :key (lambda (c) (get ale_score (ale c)))))
  (define gam (gam_ngs (slice allsort 0 3)))
  (tar (all_files (quast gam di ma id sp ki vt) :name analysis))
)
