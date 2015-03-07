ctypedef float s
ctypedef double d
ctypedef float complex c
ctypedef double complex z

# Function pointer type declarations for
# gees and gges families of functions.
ctypedef bint cselect1(c*)
ctypedef bint cselect2(c*, c*)
ctypedef bint dselect2(d*, d*)
ctypedef bint dselect3(d*, d*, d*)
ctypedef bint sselect2(s*, s*)
ctypedef bint sselect3(s*, s*, s*)
ctypedef bint zselect1(z*)
ctypedef bint zselect2(z*, z*)

cdef void cbdsqr(char *uplo, int *n, int *ncvt, int *nru, int *ncc, s *d, s *e, c *vt, int *ldvt, c *u, int *ldu, c *c, int *ldc, s *rwork, int *info) nogil

cdef void cgbbrd(char *vect, int *m, int *n, int *ncc, int *kl, int *ku, c *ab, int *ldab, s *d, s *e, c *q, int *ldq, c *pt, int *ldpt, c *c, int *ldc, c *work, s *rwork, int *info) nogil

cdef void cgbcon(char *norm, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, s *anorm, s *rcond, c *work, s *rwork, int *info) nogil

cdef void cgbequ(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, s *r, s *c, s *rowcnd, s *colcnd, s *amax, int *info) nogil

cdef void cgbrfs(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, c *afb, int *ldafb, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgbsv(int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cgbsvx(char *fact, char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, c *afb, int *ldafb, int *ipiv, char *equed, s *r, s *c, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgbtf2(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info) nogil

cdef void cgbtrf(int *m, int *n, int *kl, int *ku, c *ab, int *ldab, int *ipiv, int *info) nogil

cdef void cgbtrs(char *trans, int *n, int *kl, int *ku, int *nrhs, c *ab, int *ldab, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cgebak(char *job, char *side, int *n, int *ilo, int *ihi, s *scale, int *m, c *v, int *ldv, int *info) nogil

cdef void cgebal(char *job, int *n, c *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil

cdef void cgebd2(int *m, int *n, c *a, int *lda, s *d, s *e, c *tauq, c *taup, c *work, int *info) nogil

cdef void cgebrd(int *m, int *n, c *a, int *lda, s *d, s *e, c *tauq, c *taup, c *work, int *lwork, int *info) nogil

cdef void cgecon(char *norm, int *n, c *a, int *lda, s *anorm, s *rcond, c *work, s *rwork, int *info) nogil

cdef void cgeequ(int *m, int *n, c *a, int *lda, s *r, s *c, s *rowcnd, s *colcnd, s *amax, int *info) nogil

cdef void cgees(char *jobvs, char *sort, cselect1 *select, int *n, c *a, int *lda, int *sdim, c *w, c *vs, int *ldvs, c *work, int *lwork, s *rwork, bint *bwork, int *info) nogil

cdef void cgeesx(char *jobvs, char *sort, cselect1 *select, char *sense, int *n, c *a, int *lda, int *sdim, c *w, c *vs, int *ldvs, s *rconde, s *rcondv, c *work, int *lwork, s *rwork, bint *bwork, int *info) nogil

cdef void cgeev(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgeevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, c *a, int *lda, c *w, c *vl, int *ldvl, c *vr, int *ldvr, int *ilo, int *ihi, s *scale, s *abnrm, s *rconde, s *rcondv, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgegs(char *jobvsl, char *jobvsr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vsl, int *ldvsl, c *vsr, int *ldvsr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgegv(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgehd2(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cgehrd(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cgelq2(int *m, int *n, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cgelqf(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cgels(char *trans, int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, c *work, int *lwork, int *info) nogil

cdef void cgelsd(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *iwork, int *info) nogil

cdef void cgelss(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, s *s, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgelsx(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *jpvt, s *rcond, int *rank, c *work, s *rwork, int *info) nogil

cdef void cgelsy(int *m, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *jpvt, s *rcond, int *rank, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgeql2(int *m, int *n, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cgeqlf(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cgeqp3(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgeqpf(int *m, int *n, c *a, int *lda, int *jpvt, c *tau, c *work, s *rwork, int *info) nogil

cdef void cgeqr2(int *m, int *n, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cgeqrf(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cgerfs(char *trans, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgerq2(int *m, int *n, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cgerqf(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cgesc2(int *n, c *a, int *lda, c *rhs, int *ipiv, int *jpiv, s *scale) nogil

cdef void cgesdd(char *jobz, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *iwork, int *info) nogil

cdef void cgesv(int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cgesvd(char *jobu, char *jobvt, int *m, int *n, c *a, int *lda, s *s, c *u, int *ldu, c *vt, int *ldvt, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cgesvx(char *fact, char *trans, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, char *equed, s *r, s *c, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgetc2(int *n, c *a, int *lda, int *ipiv, int *jpiv, int *info) nogil

cdef void cgetf2(int *m, int *n, c *a, int *lda, int *ipiv, int *info) nogil

cdef void cgetrf(int *m, int *n, c *a, int *lda, int *ipiv, int *info) nogil

cdef void cgetri(int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info) nogil

cdef void cgetrs(char *trans, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cggbak(char *job, char *side, int *n, int *ilo, int *ihi, s *lscale, s *rscale, int *m, c *v, int *ldv, int *info) nogil

cdef void cggbal(char *job, int *n, c *a, int *lda, c *b, int *ldb, int *ilo, int *ihi, s *lscale, s *rscale, s *work, int *info) nogil

cdef void cgges(char *jobvsl, char *jobvsr, char *sort, cselect2 *selctg, int *n, c *a, int *lda, c *b, int *ldb, int *sdim, c *alpha, c *beta, c *vsl, int *ldvsl, c *vsr, int *ldvsr, c *work, int *lwork, s *rwork, bint *bwork, int *info) nogil

cdef void cggesx(char *jobvsl, char *jobvsr, char *sort, cselect2 *selctg, char *sense, int *n, c *a, int *lda, c *b, int *ldb, int *sdim, c *alpha, c *beta, c *vsl, int *ldvsl, c *vsr, int *ldvsr, s *rconde, s *rcondv, c *work, int *lwork, s *rwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void cggev(char *jobvl, char *jobvr, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cggevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *vl, int *ldvl, c *vr, int *ldvr, int *ilo, int *ihi, s *lscale, s *rscale, s *abnrm, s *bbnrm, s *rconde, s *rcondv, c *work, int *lwork, s *rwork, int *iwork, bint *bwork, int *info) nogil

cdef void cggglm(int *n, int *m, int *p, c *a, int *lda, c *b, int *ldb, c *d, c *x, c *y, c *work, int *lwork, int *info) nogil

cdef void cgghrd(char *compq, char *compz, int *n, int *ilo, int *ihi, c *a, int *lda, c *b, int *ldb, c *q, int *ldq, c *z, int *ldz, int *info) nogil

cdef void cgglse(int *m, int *n, int *p, c *a, int *lda, c *b, int *ldb, c *c, c *d, c *x, c *work, int *lwork, int *info) nogil

cdef void cggqrf(int *n, int *m, int *p, c *a, int *lda, c *taua, c *b, int *ldb, c *taub, c *work, int *lwork, int *info) nogil

cdef void cggrqf(int *m, int *p, int *n, c *a, int *lda, c *taua, c *b, int *ldb, c *taub, c *work, int *lwork, int *info) nogil

cdef void cggsvd(char *jobu, char *jobv, char *jobq, int *m, int *n, int *p, int *k, int *l, c *a, int *lda, c *b, int *ldb, s *alpha, s *beta, c *u, int *ldu, c *v, int *ldv, c *q, int *ldq, c *work, s *rwork, int *iwork, int *info) nogil

cdef void cggsvp(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, c *a, int *lda, c *b, int *ldb, s *tola, s *tolb, int *k, int *l, c *u, int *ldu, c *v, int *ldv, c *q, int *ldq, int *iwork, s *rwork, c *tau, c *work, int *info) nogil

cdef void cgtcon(char *norm, int *n, c *dl, c *d, c *du, c *du2, int *ipiv, s *anorm, s *rcond, c *work, int *info) nogil

cdef void cgtrfs(char *trans, int *n, int *nrhs, c *dl, c *d, c *du, c *dlf, c *df, c *duf, c *du2, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgtsv(int *n, int *nrhs, c *dl, c *d, c *du, c *b, int *ldb, int *info) nogil

cdef void cgtsvx(char *fact, char *trans, int *n, int *nrhs, c *dl, c *d, c *du, c *dlf, c *df, c *duf, c *du2, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cgttrf(int *n, c *dl, c *d, c *du, c *du2, int *ipiv, int *info) nogil

cdef void cgttrs(char *trans, int *n, int *nrhs, c *dl, c *d, c *du, c *du2, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cgtts2(int *itrans, int *n, int *nrhs, c *dl, c *d, c *du, c *du2, int *ipiv, c *b, int *ldb) nogil

cdef void chbev(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, s *rwork, int *info) nogil

cdef void chbevd(char *jobz, char *uplo, int *n, int *kd, c *ab, int *ldab, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void chbevx(char *jobz, char *range, char *uplo, int *n, int *kd, c *ab, int *ldab, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void chbgst(char *vect, char *uplo, int *n, int *ka, int *kb, c *ab, int *ldab, c *bb, int *ldbb, c *x, int *ldx, c *work, s *rwork, int *info) nogil

cdef void chbgv(char *jobz, char *uplo, int *n, int *ka, int *kb, c *ab, int *ldab, c *bb, int *ldbb, s *w, c *z, int *ldz, c *work, s *rwork, int *info) nogil

cdef void chbgvd(char *jobz, char *uplo, int *n, int *ka, int *kb, c *ab, int *ldab, c *bb, int *ldbb, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void chbgvx(char *jobz, char *range, char *uplo, int *n, int *ka, int *kb, c *ab, int *ldab, c *bb, int *ldbb, c *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void chbtrd(char *vect, char *uplo, int *n, int *kd, c *ab, int *ldab, s *d, s *e, c *q, int *ldq, c *work, int *info) nogil

cdef void checon(char *uplo, int *n, c *a, int *lda, int *ipiv, s *anorm, s *rcond, c *work, int *info) nogil

cdef void cheev(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *info) nogil

cdef void cheevd(char *jobz, char *uplo, int *n, c *a, int *lda, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void cheevr(char *jobz, char *range, char *uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void cheevx(char *jobz, char *range, char *uplo, int *n, c *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void chegs2(int *itype, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, int *info) nogil

cdef void chegst(int *itype, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, int *info) nogil

cdef void chegv(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *info) nogil

cdef void chegvd(int *itype, char *jobz, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *w, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void chegvx(int *itype, char *jobz, char *range, char *uplo, int *n, c *a, int *lda, c *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void cherfs(char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void chesv(char *uplo, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, c *work, int *lwork, int *info) nogil

cdef void chesvx(char *fact, char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void chetd2(char *uplo, int *n, c *a, int *lda, s *d, s *e, c *tau, int *info) nogil

cdef void chetf2(char *uplo, int *n, c *a, int *lda, int *ipiv, int *info) nogil

cdef void chetrd(char *uplo, int *n, c *a, int *lda, s *d, s *e, c *tau, c *work, int *lwork, int *info) nogil

cdef void chetrf(char *uplo, int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info) nogil

cdef void chetri(char *uplo, int *n, c *a, int *lda, int *ipiv, c *work, int *info) nogil

cdef void chetrs(char *uplo, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void chgeqz(char *job, char *compq, char *compz, int *n, int *ilo, int *ihi, c *h, int *ldh, c *t, int *ldt, c *alpha, c *beta, c *q, int *ldq, c *z, int *ldz, c *work, int *lwork, s *rwork, int *info) nogil

cdef void chpcon(char *uplo, int *n, c *ap, int *ipiv, s *anorm, s *rcond, c *work, int *info) nogil

cdef void chpev(char *jobz, char *uplo, int *n, c *ap, s *w, c *z, int *ldz, c *work, s *rwork, int *info) nogil

cdef void chpevd(char *jobz, char *uplo, int *n, c *ap, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void chpevx(char *jobz, char *range, char *uplo, int *n, c *ap, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void chpgst(int *itype, char *uplo, int *n, c *ap, c *bp, int *info) nogil

cdef void chpgv(int *itype, char *jobz, char *uplo, int *n, c *ap, c *bp, s *w, c *z, int *ldz, c *work, s *rwork, int *info) nogil

cdef void chpgvd(int *itype, char *jobz, char *uplo, int *n, c *ap, c *bp, s *w, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void chpgvx(int *itype, char *jobz, char *range, char *uplo, int *n, c *ap, c *bp, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, c *work, s *rwork, int *iwork, int *ifail, int *info) nogil

cdef void chprfs(char *uplo, int *n, int *nrhs, c *ap, c *afp, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void chpsv(char *uplo, int *n, int *nrhs, c *ap, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void chpsvx(char *fact, char *uplo, int *n, int *nrhs, c *ap, c *afp, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void chptrd(char *uplo, int *n, c *ap, s *d, s *e, c *tau, int *info) nogil

cdef void chptrf(char *uplo, int *n, c *ap, int *ipiv, int *info) nogil

cdef void chptri(char *uplo, int *n, c *ap, int *ipiv, c *work, int *info) nogil

cdef void chptrs(char *uplo, int *n, int *nrhs, c *ap, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void chsein(char *side, char *eigsrc, char *initv, bint *select, int *n, c *h, int *ldh, c *w, c *vl, int *ldvl, c *vr, int *ldvr, int *mm, int *m, c *work, s *rwork, int *ifaill, int *ifailr, int *info) nogil

cdef void chseqr(char *job, char *compz, int *n, int *ilo, int *ihi, c *h, int *ldh, c *w, c *z, int *ldz, c *work, int *lwork, int *info) nogil

cdef void clacn2(int *n, c *v, c *x, s *est, int *kase, int *isave) nogil

cdef void clacon(int *n, c *v, c *x, s *est, int *kase) nogil

cdef s clangb(char *norm, int *n, int *kl, int *ku, c *ab, int *ldab, s *work) nogil

cdef s clange(char *norm, int *m, int *n, c *a, int *lda, s *work) nogil

cdef s clangt(char *norm, int *n, c *dl, c *d, c *du) nogil

cdef s clanhb(char *norm, char *uplo, int *n, int *k, c *ab, int *ldab, s *work) nogil

cdef s clanhe(char *norm, char *uplo, int *n, c *a, int *lda, s *work) nogil

cdef s clanhp(char *norm, char *uplo, int *n, c *ap, s *work) nogil

cdef s clanhs(char *norm, int *n, c *a, int *lda, s *work) nogil

cdef s clanht(char *norm, int *n, s *d, c *e) nogil

cdef s clansb(char *norm, char *uplo, int *n, int *k, c *ab, int *ldab, s *work) nogil

cdef s clansp(char *norm, char *uplo, int *n, c *ap, s *work) nogil

cdef s clansy(char *norm, char *uplo, int *n, c *a, int *lda, s *work) nogil

cdef s clantb(char *norm, char *uplo, char *diag, int *n, int *k, c *ab, int *ldab, s *work) nogil

cdef s clantp(char *norm, char *uplo, char *diag, int *n, c *ap, s *work) nogil

cdef s clantr(char *norm, char *uplo, char *diag, int *m, int *n, c *a, int *lda, s *work) nogil

cdef void clarf(char *side, int *m, int *n, c *v, int *incv, c *tau, c *c, int *ldc, c *work) nogil

cdef void clarz(char *side, int *m, int *n, int *l, c *v, int *incv, c *tau, c *c, int *ldc, c *work) nogil

cdef void claswp(int *n, c *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil

cdef void clauum(char *uplo, int *n, c *a, int *lda, int *info) nogil

cdef void cpbcon(char *uplo, int *n, int *kd, c *ab, int *ldab, s *anorm, s *rcond, c *work, s *rwork, int *info) nogil

cdef void cpbequ(char *uplo, int *n, int *kd, c *ab, int *ldab, s *s, s *scond, s *amax, int *info) nogil

cdef void cpbrfs(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *afb, int *ldafb, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cpbstf(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info) nogil

cdef void cpbsv(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil

cdef void cpbsvx(char *fact, char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *afb, int *ldafb, char *equed, s *s, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cpbtf2(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info) nogil

cdef void cpbtrf(char *uplo, int *n, int *kd, c *ab, int *ldab, int *info) nogil

cdef void cpbtrs(char *uplo, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil

cdef void cpocon(char *uplo, int *n, c *a, int *lda, s *anorm, s *rcond, c *work, s *rwork, int *info) nogil

cdef void cpoequ(int *n, c *a, int *lda, s *s, s *scond, s *amax, int *info) nogil

cdef void cporfs(char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cposv(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil

cdef void cposvx(char *fact, char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, char *equed, s *s, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cpotf2(char *uplo, int *n, c *a, int *lda, int *info) nogil

cdef void cpotrf(char *uplo, int *n, c *a, int *lda, int *info) nogil

cdef void cpotri(char *uplo, int *n, c *a, int *lda, int *info) nogil

cdef void cpotrs(char *uplo, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil

cdef void cppcon(char *uplo, int *n, c *ap, s *anorm, s *rcond, c *work, s *rwork, int *info) nogil

cdef void cppequ(char *uplo, int *n, c *ap, s *s, s *scond, s *amax, int *info) nogil

cdef void cpprfs(char *uplo, int *n, int *nrhs, c *ap, c *afp, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cppsv(char *uplo, int *n, int *nrhs, c *ap, c *b, int *ldb, int *info) nogil

cdef void cppsvx(char *fact, char *uplo, int *n, int *nrhs, c *ap, c *afp, char *equed, s *s, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cpptrf(char *uplo, int *n, c *ap, int *info) nogil

cdef void cpptri(char *uplo, int *n, c *ap, int *info) nogil

cdef void cpptrs(char *uplo, int *n, int *nrhs, c *ap, c *b, int *ldb, int *info) nogil

cdef void cptcon(int *n, s *d, c *e, s *anorm, s *rcond, s *rwork, int *info) nogil

cdef void cpteqr(char *compz, int *n, s *d, s *e, c *z, int *ldz, s *work, int *info) nogil

cdef void cptrfs(char *uplo, int *n, int *nrhs, s *d, c *e, s *df, c *ef, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cptsv(int *n, int *nrhs, s *d, c *e, c *b, int *ldb, int *info) nogil

cdef void cptsvx(char *fact, int *n, int *nrhs, s *d, c *e, s *df, c *ef, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cpttrf(int *n, s *d, c *e, int *info) nogil

cdef void cpttrs(char *uplo, int *n, int *nrhs, s *d, c *e, c *b, int *ldb, int *info) nogil

cdef void cptts2(int *iuplo, int *n, int *nrhs, s *d, c *e, c *b, int *ldb) nogil

cdef void crot(int *n, c *cx, int *incx, c *cy, int *incy, s *c, c *s) nogil

cdef void cspcon(char *uplo, int *n, c *ap, int *ipiv, s *anorm, s *rcond, c *work, int *info) nogil

cdef void cspmv(char *uplo, int *n, c *alpha, c *ap, c *x, int *incx, c *beta, c *y, int *incy) nogil

cdef void cspr(char *uplo, int *n, c *alpha, c *x, int *incx, c *ap) nogil

cdef void csprfs(char *uplo, int *n, int *nrhs, c *ap, c *afp, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void cspsv(char *uplo, int *n, int *nrhs, c *ap, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void cspsvx(char *fact, char *uplo, int *n, int *nrhs, c *ap, c *afp, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void csptrf(char *uplo, int *n, c *ap, int *ipiv, int *info) nogil

cdef void csptri(char *uplo, int *n, c *ap, int *ipiv, c *work, int *info) nogil

cdef void csptrs(char *uplo, int *n, int *nrhs, c *ap, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void csrscl(int *n, s *sa, c *sx, int *incx) nogil

cdef void cstedc(char *compz, int *n, s *d, s *e, c *z, int *ldz, c *work, int *lwork, s *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void cstegr(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, c *z, int *ldz, int *isuppz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void cstein(int *n, s *d, s *e, int *m, s *w, int *iblock, int *isplit, c *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void cstemr(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, int *m, s *w, c *z, int *ldz, int *nzc, int *isuppz, bint *tryrac, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void csteqr(char *compz, int *n, s *d, s *e, c *z, int *ldz, s *work, int *info) nogil

cdef void csycon(char *uplo, int *n, c *a, int *lda, int *ipiv, s *anorm, s *rcond, c *work, int *info) nogil

cdef void csymv(char *uplo, int *n, c *alpha, c *a, int *lda, c *x, int *incx, c *beta, c *y, int *incy) nogil

cdef void csyr(char *uplo, int *n, c *alpha, c *x, int *incx, c *a, int *lda) nogil

cdef void csyrfs(char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void csysv(char *uplo, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, c *work, int *lwork, int *info) nogil

cdef void csysvx(char *fact, char *uplo, int *n, int *nrhs, c *a, int *lda, c *af, int *ldaf, int *ipiv, c *b, int *ldb, c *x, int *ldx, s *rcond, s *ferr, s *berr, c *work, int *lwork, s *rwork, int *info) nogil

cdef void csytf2(char *uplo, int *n, c *a, int *lda, int *ipiv, int *info) nogil

cdef void csytrf(char *uplo, int *n, c *a, int *lda, int *ipiv, c *work, int *lwork, int *info) nogil

cdef void csytri(char *uplo, int *n, c *a, int *lda, int *ipiv, c *work, int *info) nogil

cdef void csytrs(char *uplo, int *n, int *nrhs, c *a, int *lda, int *ipiv, c *b, int *ldb, int *info) nogil

cdef void ctbcon(char *norm, char *uplo, char *diag, int *n, int *kd, c *ab, int *ldab, s *rcond, c *work, s *rwork, int *info) nogil

cdef void ctbrfs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void ctbtrs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, c *ab, int *ldab, c *b, int *ldb, int *info) nogil

cdef void ctgevc(char *side, char *howmny, bint *select, int *n, c *s, int *lds, c *p, int *ldp, c *vl, int *ldvl, c *vr, int *ldvr, int *mm, int *m, c *work, s *rwork, int *info) nogil

cdef void ctgex2(bint *wantq, bint *wantz, int *n, c *a, int *lda, c *b, int *ldb, c *q, int *ldq, c *z, int *ldz, int *j1, int *info) nogil

cdef void ctgexc(bint *wantq, bint *wantz, int *n, c *a, int *lda, c *b, int *ldb, c *q, int *ldq, c *z, int *ldz, int *ifst, int *ilst, int *info) nogil

cdef void ctgsen(int *ijob, bint *wantq, bint *wantz, bint *select, int *n, c *a, int *lda, c *b, int *ldb, c *alpha, c *beta, c *q, int *ldq, c *z, int *ldz, int *m, s *pl, s *pr, s *dif, c *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ctgsja(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, int *k, int *l, c *a, int *lda, c *b, int *ldb, s *tola, s *tolb, s *alpha, s *beta, c *u, int *ldu, c *v, int *ldv, c *q, int *ldq, c *work, int *ncycle, int *info) nogil

cdef void ctgsna(char *job, char *howmny, bint *select, int *n, c *a, int *lda, c *b, int *ldb, c *vl, int *ldvl, c *vr, int *ldvr, s *s, s *dif, int *mm, int *m, c *work, int *lwork, int *iwork, int *info) nogil

cdef void ctgsy2(char *trans, int *ijob, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, c *d, int *ldd, c *e, int *lde, c *f, int *ldf, s *scale, s *rdsum, s *rdscal, int *info) nogil

cdef void ctgsyl(char *trans, int *ijob, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, c *d, int *ldd, c *e, int *lde, c *f, int *ldf, s *scale, s *dif, c *work, int *lwork, int *iwork, int *info) nogil

cdef void ctpcon(char *norm, char *uplo, char *diag, int *n, c *ap, s *rcond, c *work, s *rwork, int *info) nogil

cdef void ctprfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *ap, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void ctptri(char *uplo, char *diag, int *n, c *ap, int *info) nogil

cdef void ctptrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *ap, c *b, int *ldb, int *info) nogil

cdef void ctrcon(char *norm, char *uplo, char *diag, int *n, c *a, int *lda, s *rcond, c *work, s *rwork, int *info) nogil

cdef void ctrevc(char *side, char *howmny, bint *select, int *n, c *t, int *ldt, c *vl, int *ldvl, c *vr, int *ldvr, int *mm, int *m, c *work, s *rwork, int *info) nogil

cdef void ctrexc(char *compq, int *n, c *t, int *ldt, c *q, int *ldq, int *ifst, int *ilst, int *info) nogil

cdef void ctrrfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, c *x, int *ldx, s *ferr, s *berr, c *work, s *rwork, int *info) nogil

cdef void ctrsen(char *job, char *compq, bint *select, int *n, c *t, int *ldt, c *q, int *ldq, c *w, int *m, s *s, s *sep, c *work, int *lwork, int *info) nogil

cdef void ctrsna(char *job, char *howmny, bint *select, int *n, c *t, int *ldt, c *vl, int *ldvl, c *vr, int *ldvr, s *s, s *sep, int *mm, int *m, c *work, int *ldwork, s *rwork, int *info) nogil

cdef void ctrsyl(char *trana, char *tranb, int *isgn, int *m, int *n, c *a, int *lda, c *b, int *ldb, c *c, int *ldc, s *scale, int *info) nogil

cdef void ctrti2(char *uplo, char *diag, int *n, c *a, int *lda, int *info) nogil

cdef void ctrtri(char *uplo, char *diag, int *n, c *a, int *lda, int *info) nogil

cdef void ctrtrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, c *a, int *lda, c *b, int *ldb, int *info) nogil

cdef void ctzrqf(int *m, int *n, c *a, int *lda, c *tau, int *info) nogil

cdef void ctzrzf(int *m, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cung2l(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cung2r(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cungbr(char *vect, int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cunghr(int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cungl2(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cunglq(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cungql(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cungqr(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cungr2(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *info) nogil

cdef void cungrq(int *m, int *n, int *k, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cungtr(char *uplo, int *n, c *a, int *lda, c *tau, c *work, int *lwork, int *info) nogil

cdef void cunm2l(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void cunm2r(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void cunmbr(char *vect, char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmhr(char *side, char *trans, int *m, int *n, int *ilo, int *ihi, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunml2(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void cunmlq(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmql(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmqr(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmr2(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void cunmr3(char *side, char *trans, int *m, int *n, int *k, int *l, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void cunmrq(char *side, char *trans, int *m, int *n, int *k, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmrz(char *side, char *trans, int *m, int *n, int *k, int *l, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cunmtr(char *side, char *uplo, char *trans, int *m, int *n, c *a, int *lda, c *tau, c *c, int *ldc, c *work, int *lwork, int *info) nogil

cdef void cupgtr(char *uplo, int *n, c *ap, c *tau, c *q, int *ldq, c *work, int *info) nogil

cdef void cupmtr(char *side, char *uplo, char *trans, int *m, int *n, c *ap, c *tau, c *c, int *ldc, c *work, int *info) nogil

cdef void dbdsdc(char *uplo, char *compq, int *n, d *d, d *e, d *u, int *ldu, d *vt, int *ldvt, d *q, int *iq, d *work, int *iwork, int *info) nogil

cdef void dbdsqr(char *uplo, int *n, int *ncvt, int *nru, int *ncc, d *d, d *e, d *vt, int *ldvt, d *u, int *ldu, d *c, int *ldc, d *work, int *info) nogil

cdef void ddisna(char *job, int *m, int *n, d *d, d *sep, int *info) nogil

cdef void dgbbrd(char *vect, int *m, int *n, int *ncc, int *kl, int *ku, d *ab, int *ldab, d *d, d *e, d *q, int *ldq, d *pt, int *ldpt, d *c, int *ldc, d *work, int *info) nogil

cdef void dgbcon(char *norm, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dgbequ(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, d *r, d *c, d *rowcnd, d *colcnd, d *amax, int *info) nogil

cdef void dgbrfs(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, d *afb, int *ldafb, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgbsv(int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dgbsvx(char *fact, char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, d *afb, int *ldafb, int *ipiv, char *equed, d *r, d *c, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgbtf2(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info) nogil

cdef void dgbtrf(int *m, int *n, int *kl, int *ku, d *ab, int *ldab, int *ipiv, int *info) nogil

cdef void dgbtrs(char *trans, int *n, int *kl, int *ku, int *nrhs, d *ab, int *ldab, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dgebak(char *job, char *side, int *n, int *ilo, int *ihi, d *scale, int *m, d *v, int *ldv, int *info) nogil

cdef void dgebal(char *job, int *n, d *a, int *lda, int *ilo, int *ihi, d *scale, int *info) nogil

cdef void dgebd2(int *m, int *n, d *a, int *lda, d *d, d *e, d *tauq, d *taup, d *work, int *info) nogil

cdef void dgebrd(int *m, int *n, d *a, int *lda, d *d, d *e, d *tauq, d *taup, d *work, int *lwork, int *info) nogil

cdef void dgecon(char *norm, int *n, d *a, int *lda, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dgeequ(int *m, int *n, d *a, int *lda, d *r, d *c, d *rowcnd, d *colcnd, d *amax, int *info) nogil

cdef void dgees(char *jobvs, char *sort, dselect2 *select, int *n, d *a, int *lda, int *sdim, d *wr, d *wi, d *vs, int *ldvs, d *work, int *lwork, bint *bwork, int *info) nogil

cdef void dgeesx(char *jobvs, char *sort, dselect2 *select, char *sense, int *n, d *a, int *lda, int *sdim, d *wr, d *wi, d *vs, int *ldvs, d *rconde, d *rcondv, d *work, int *lwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void dgeev(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *wr, d *wi, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, int *info) nogil

cdef void dgeevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, d *a, int *lda, d *wr, d *wi, d *vl, int *ldvl, d *vr, int *ldvr, int *ilo, int *ihi, d *scale, d *abnrm, d *rconde, d *rcondv, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dgegs(char *jobvsl, char *jobvsr, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *vsl, int *ldvsl, d *vsr, int *ldvsr, d *work, int *lwork, int *info) nogil

cdef void dgegv(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, int *info) nogil

cdef void dgehd2(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dgehrd(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgelq2(int *m, int *n, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dgelqf(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgels(char *trans, int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, d *work, int *lwork, int *info) nogil

cdef void dgelsd(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, d *s, d *rcond, int *rank, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dgelss(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, d *s, d *rcond, int *rank, d *work, int *lwork, int *info) nogil

cdef void dgelsx(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *jpvt, d *rcond, int *rank, d *work, int *info) nogil

cdef void dgelsy(int *m, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *jpvt, d *rcond, int *rank, d *work, int *lwork, int *info) nogil

cdef void dgeql2(int *m, int *n, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dgeqlf(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgeqp3(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgeqpf(int *m, int *n, d *a, int *lda, int *jpvt, d *tau, d *work, int *info) nogil

cdef void dgeqr2(int *m, int *n, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dgeqrf(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgerfs(char *trans, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgerq2(int *m, int *n, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dgerqf(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dgesc2(int *n, d *a, int *lda, d *rhs, int *ipiv, int *jpiv, d *scale) nogil

cdef void dgesdd(char *jobz, int *m, int *n, d *a, int *lda, d *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dgesv(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dgesvd(char *jobu, char *jobvt, int *m, int *n, d *a, int *lda, d *s, d *u, int *ldu, d *vt, int *ldvt, d *work, int *lwork, int *info) nogil

cdef void dgesvx(char *fact, char *trans, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, int *ipiv, char *equed, d *r, d *c, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgetc2(int *n, d *a, int *lda, int *ipiv, int *jpiv, int *info) nogil

cdef void dgetf2(int *m, int *n, d *a, int *lda, int *ipiv, int *info) nogil

cdef void dgetrf(int *m, int *n, d *a, int *lda, int *ipiv, int *info) nogil

cdef void dgetri(int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info) nogil

cdef void dgetrs(char *trans, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dggbak(char *job, char *side, int *n, int *ilo, int *ihi, d *lscale, d *rscale, int *m, d *v, int *ldv, int *info) nogil

cdef void dggbal(char *job, int *n, d *a, int *lda, d *b, int *ldb, int *ilo, int *ihi, d *lscale, d *rscale, d *work, int *info) nogil

cdef void dgges(char *jobvsl, char *jobvsr, char *sort, dselect3 *selctg, int *n, d *a, int *lda, d *b, int *ldb, int *sdim, d *alphar, d *alphai, d *beta, d *vsl, int *ldvsl, d *vsr, int *ldvsr, d *work, int *lwork, bint *bwork, int *info) nogil

cdef void dggesx(char *jobvsl, char *jobvsr, char *sort, dselect3 *selctg, char *sense, int *n, d *a, int *lda, d *b, int *ldb, int *sdim, d *alphar, d *alphai, d *beta, d *vsl, int *ldvsl, d *vsr, int *ldvsr, d *rconde, d *rcondv, d *work, int *lwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void dggev(char *jobvl, char *jobvr, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, d *work, int *lwork, int *info) nogil

cdef void dggevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *vl, int *ldvl, d *vr, int *ldvr, int *ilo, int *ihi, d *lscale, d *rscale, d *abnrm, d *bbnrm, d *rconde, d *rcondv, d *work, int *lwork, int *iwork, bint *bwork, int *info) nogil

cdef void dggglm(int *n, int *m, int *p, d *a, int *lda, d *b, int *ldb, d *d, d *x, d *y, d *work, int *lwork, int *info) nogil

cdef void dgghrd(char *compq, char *compz, int *n, int *ilo, int *ihi, d *a, int *lda, d *b, int *ldb, d *q, int *ldq, d *z, int *ldz, int *info) nogil

cdef void dgglse(int *m, int *n, int *p, d *a, int *lda, d *b, int *ldb, d *c, d *d, d *x, d *work, int *lwork, int *info) nogil

cdef void dggqrf(int *n, int *m, int *p, d *a, int *lda, d *taua, d *b, int *ldb, d *taub, d *work, int *lwork, int *info) nogil

cdef void dggrqf(int *m, int *p, int *n, d *a, int *lda, d *taua, d *b, int *ldb, d *taub, d *work, int *lwork, int *info) nogil

cdef void dggsvd(char *jobu, char *jobv, char *jobq, int *m, int *n, int *p, int *k, int *l, d *a, int *lda, d *b, int *ldb, d *alpha, d *beta, d *u, int *ldu, d *v, int *ldv, d *q, int *ldq, d *work, int *iwork, int *info) nogil

cdef void dggsvp(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, d *a, int *lda, d *b, int *ldb, d *tola, d *tolb, int *k, int *l, d *u, int *ldu, d *v, int *ldv, d *q, int *ldq, int *iwork, d *tau, d *work, int *info) nogil

cdef void dgtcon(char *norm, int *n, d *dl, d *d, d *du, d *du2, int *ipiv, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dgtrfs(char *trans, int *n, int *nrhs, d *dl, d *d, d *du, d *dlf, d *df, d *duf, d *du2, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgtsv(int *n, int *nrhs, d *dl, d *d, d *du, d *b, int *ldb, int *info) nogil

cdef void dgtsvx(char *fact, char *trans, int *n, int *nrhs, d *dl, d *d, d *du, d *dlf, d *df, d *duf, d *du2, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dgttrf(int *n, d *dl, d *d, d *du, d *du2, int *ipiv, int *info) nogil

cdef void dgttrs(char *trans, int *n, int *nrhs, d *dl, d *d, d *du, d *du2, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dgtts2(int *itrans, int *n, int *nrhs, d *dl, d *d, d *du, d *du2, int *ipiv, d *b, int *ldb) nogil

cdef void dhgeqz(char *job, char *compq, char *compz, int *n, int *ilo, int *ihi, d *h, int *ldh, d *t, int *ldt, d *alphar, d *alphai, d *beta, d *q, int *ldq, d *z, int *ldz, d *work, int *lwork, int *info) nogil

cdef void dhsein(char *side, char *eigsrc, char *initv, bint *select, int *n, d *h, int *ldh, d *wr, d *wi, d *vl, int *ldvl, d *vr, int *ldvr, int *mm, int *m, d *work, int *ifaill, int *ifailr, int *info) nogil

cdef void dhseqr(char *job, char *compz, int *n, int *ilo, int *ihi, d *h, int *ldh, d *wr, d *wi, d *z, int *ldz, d *work, int *lwork, int *info) nogil

cdef bint disnan(d *din) nogil

cdef void dlacn2(int *n, d *v, d *x, int *isgn, d *est, int *kase, int *isave) nogil

cdef void dlacon(int *n, d *v, d *x, int *isgn, d *est, int *kase) nogil

cdef d dlamch(char *cmach) nogil

cdef d dlangb(char *norm, int *n, int *kl, int *ku, d *ab, int *ldab, d *work) nogil

cdef d dlange(char *norm, int *m, int *n, d *a, int *lda, d *work) nogil

cdef d dlangt(char *norm, int *n, d *dl, d *d, d *du) nogil

cdef d dlanhs(char *norm, int *n, d *a, int *lda, d *work) nogil

cdef d dlansb(char *norm, char *uplo, int *n, int *k, d *ab, int *ldab, d *work) nogil

cdef d dlansp(char *norm, char *uplo, int *n, d *ap, d *work) nogil

cdef d dlanst(char *norm, int *n, d *d, d *e) nogil

cdef d dlansy(char *norm, char *uplo, int *n, d *a, int *lda, d *work) nogil

cdef d dlantb(char *norm, char *uplo, char *diag, int *n, int *k, d *ab, int *ldab, d *work) nogil

cdef d dlantp(char *norm, char *uplo, char *diag, int *n, d *ap, d *work) nogil

cdef d dlantr(char *norm, char *uplo, char *diag, int *m, int *n, d *a, int *lda, d *work) nogil

cdef void dlanv2(d *a, d *b, d *c, d *d, d *rt1r, d *rt1i, d *rt2r, d *rt2i, d *cs, d *sn) nogil

cdef void dlarf(char *side, int *m, int *n, d *v, int *incv, d *tau, d *c, int *ldc, d *work) nogil

cdef void dlarz(char *side, int *m, int *n, int *l, d *v, int *incv, d *tau, d *c, int *ldc, d *work) nogil

cdef void dlaswp(int *n, d *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil

cdef void dlauum(char *uplo, int *n, d *a, int *lda, int *info) nogil

cdef void dopgtr(char *uplo, int *n, d *ap, d *tau, d *q, int *ldq, d *work, int *info) nogil

cdef void dopmtr(char *side, char *uplo, char *trans, int *m, int *n, d *ap, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dorg2l(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dorg2r(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dorgbr(char *vect, int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorghr(int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorgl2(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dorglq(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorgql(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorgqr(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorgr2(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *info) nogil

cdef void dorgrq(int *m, int *n, int *k, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorgtr(char *uplo, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef void dorm2l(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dorm2r(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dormbr(char *vect, char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormhr(char *side, char *trans, int *m, int *n, int *ilo, int *ihi, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dorml2(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dormlq(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormql(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormqr(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormr2(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dormr3(char *side, char *trans, int *m, int *n, int *k, int *l, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *info) nogil

cdef void dormrq(char *side, char *trans, int *m, int *n, int *k, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormrz(char *side, char *trans, int *m, int *n, int *k, int *l, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dormtr(char *side, char *uplo, char *trans, int *m, int *n, d *a, int *lda, d *tau, d *c, int *ldc, d *work, int *lwork, int *info) nogil

cdef void dpbcon(char *uplo, int *n, int *kd, d *ab, int *ldab, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dpbequ(char *uplo, int *n, int *kd, d *ab, int *ldab, d *s, d *scond, d *amax, int *info) nogil

cdef void dpbrfs(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *afb, int *ldafb, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dpbstf(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info) nogil

cdef void dpbsv(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil

cdef void dpbsvx(char *fact, char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *afb, int *ldafb, char *equed, d *s, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dpbtf2(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info) nogil

cdef void dpbtrf(char *uplo, int *n, int *kd, d *ab, int *ldab, int *info) nogil

cdef void dpbtrs(char *uplo, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil

cdef void dpocon(char *uplo, int *n, d *a, int *lda, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dpoequ(int *n, d *a, int *lda, d *s, d *scond, d *amax, int *info) nogil

cdef void dporfs(char *uplo, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dposv(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil

cdef void dposvx(char *fact, char *uplo, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, char *equed, d *s, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dpotf2(char *uplo, int *n, d *a, int *lda, int *info) nogil

cdef void dpotrf(char *uplo, int *n, d *a, int *lda, int *info) nogil

cdef void dpotri(char *uplo, int *n, d *a, int *lda, int *info) nogil

cdef void dpotrs(char *uplo, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil

cdef void dppcon(char *uplo, int *n, d *ap, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dppequ(char *uplo, int *n, d *ap, d *s, d *scond, d *amax, int *info) nogil

cdef void dpprfs(char *uplo, int *n, int *nrhs, d *ap, d *afp, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dppsv(char *uplo, int *n, int *nrhs, d *ap, d *b, int *ldb, int *info) nogil

cdef void dppsvx(char *fact, char *uplo, int *n, int *nrhs, d *ap, d *afp, char *equed, d *s, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dpptrf(char *uplo, int *n, d *ap, int *info) nogil

cdef void dpptri(char *uplo, int *n, d *ap, int *info) nogil

cdef void dpptrs(char *uplo, int *n, int *nrhs, d *ap, d *b, int *ldb, int *info) nogil

cdef void dptcon(int *n, d *d, d *e, d *anorm, d *rcond, d *work, int *info) nogil

cdef void dpteqr(char *compz, int *n, d *d, d *e, d *z, int *ldz, d *work, int *info) nogil

cdef void dptrfs(int *n, int *nrhs, d *d, d *e, d *df, d *ef, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *info) nogil

cdef void dptsv(int *n, int *nrhs, d *d, d *e, d *b, int *ldb, int *info) nogil

cdef void dptsvx(char *fact, int *n, int *nrhs, d *d, d *e, d *df, d *ef, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *info) nogil

cdef void dpttrf(int *n, d *d, d *e, int *info) nogil

cdef void dpttrs(int *n, int *nrhs, d *d, d *e, d *b, int *ldb, int *info) nogil

cdef void dptts2(int *n, int *nrhs, d *d, d *e, d *b, int *ldb) nogil

cdef void drscl(int *n, d *sa, d *sx, int *incx) nogil

cdef void dsbev(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, d *w, d *z, int *ldz, d *work, int *info) nogil

cdef void dsbevd(char *jobz, char *uplo, int *n, int *kd, d *ab, int *ldab, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsbevx(char *jobz, char *range, char *uplo, int *n, int *kd, d *ab, int *ldab, d *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dsbgst(char *vect, char *uplo, int *n, int *ka, int *kb, d *ab, int *ldab, d *bb, int *ldbb, d *x, int *ldx, d *work, int *info) nogil

cdef void dsbgv(char *jobz, char *uplo, int *n, int *ka, int *kb, d *ab, int *ldab, d *bb, int *ldbb, d *w, d *z, int *ldz, d *work, int *info) nogil

cdef void dsbgvd(char *jobz, char *uplo, int *n, int *ka, int *kb, d *ab, int *ldab, d *bb, int *ldbb, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsbgvx(char *jobz, char *range, char *uplo, int *n, int *ka, int *kb, d *ab, int *ldab, d *bb, int *ldbb, d *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dsbtrd(char *vect, char *uplo, int *n, int *kd, d *ab, int *ldab, d *d, d *e, d *q, int *ldq, d *work, int *info) nogil

cdef void dsgesv(int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *work, s *swork, int *iter, int *info) nogil

cdef void dspcon(char *uplo, int *n, d *ap, int *ipiv, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dspev(char *jobz, char *uplo, int *n, d *ap, d *w, d *z, int *ldz, d *work, int *info) nogil

cdef void dspevd(char *jobz, char *uplo, int *n, d *ap, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dspevx(char *jobz, char *range, char *uplo, int *n, d *ap, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dspgst(int *itype, char *uplo, int *n, d *ap, d *bp, int *info) nogil

cdef void dspgv(int *itype, char *jobz, char *uplo, int *n, d *ap, d *bp, d *w, d *z, int *ldz, d *work, int *info) nogil

cdef void dspgvd(int *itype, char *jobz, char *uplo, int *n, d *ap, d *bp, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dspgvx(int *itype, char *jobz, char *range, char *uplo, int *n, d *ap, d *bp, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dsprfs(char *uplo, int *n, int *nrhs, d *ap, d *afp, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dspsv(char *uplo, int *n, int *nrhs, d *ap, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dspsvx(char *fact, char *uplo, int *n, int *nrhs, d *ap, d *afp, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dsptrd(char *uplo, int *n, d *ap, d *d, d *e, d *tau, int *info) nogil

cdef void dsptrf(char *uplo, int *n, d *ap, int *ipiv, int *info) nogil

cdef void dsptri(char *uplo, int *n, d *ap, int *ipiv, d *work, int *info) nogil

cdef void dsptrs(char *uplo, int *n, int *nrhs, d *ap, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dstebz(char *range, char *order, int *n, d *vl, d *vu, int *il, int *iu, d *abstol, d *d, d *e, int *m, int *nsplit, d *w, int *iblock, int *isplit, d *work, int *iwork, int *info) nogil

cdef void dstedc(char *compz, int *n, d *d, d *e, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dstegr(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dstein(int *n, d *d, d *e, int *m, d *w, int *iblock, int *isplit, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dstemr(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, int *m, d *w, d *z, int *ldz, int *nzc, int *isuppz, bint *tryrac, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsteqr(char *compz, int *n, d *d, d *e, d *z, int *ldz, d *work, int *info) nogil

cdef void dsterf(int *n, d *d, d *e, int *info) nogil

cdef void dstev(char *jobz, int *n, d *d, d *e, d *z, int *ldz, d *work, int *info) nogil

cdef void dstevd(char *jobz, int *n, d *d, d *e, d *z, int *ldz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dstevr(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dstevx(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void dsycon(char *uplo, int *n, d *a, int *lda, int *ipiv, d *anorm, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dsyev(char *jobz, char *uplo, int *n, d *a, int *lda, d *w, d *work, int *lwork, int *info) nogil

cdef void dsyevd(char *jobz, char *uplo, int *n, d *a, int *lda, d *w, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsyevr(char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, int *isuppz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsyevx(char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *ifail, int *info) nogil

cdef void dsygs2(int *itype, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, int *info) nogil

cdef void dsygst(int *itype, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, int *info) nogil

cdef void dsygv(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *w, d *work, int *lwork, int *info) nogil

cdef void dsygvd(int *itype, char *jobz, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *w, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dsygvx(int *itype, char *jobz, char *range, char *uplo, int *n, d *a, int *lda, d *b, int *ldb, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, d *z, int *ldz, d *work, int *lwork, int *iwork, int *ifail, int *info) nogil

cdef void dsyrfs(char *uplo, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dsysv(char *uplo, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, d *work, int *lwork, int *info) nogil

cdef void dsysvx(char *fact, char *uplo, int *n, int *nrhs, d *a, int *lda, d *af, int *ldaf, int *ipiv, d *b, int *ldb, d *x, int *ldx, d *rcond, d *ferr, d *berr, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dsytd2(char *uplo, int *n, d *a, int *lda, d *d, d *e, d *tau, int *info) nogil

cdef void dsytf2(char *uplo, int *n, d *a, int *lda, int *ipiv, int *info) nogil

cdef void dsytrd(char *uplo, int *n, d *a, int *lda, d *d, d *e, d *tau, d *work, int *lwork, int *info) nogil

cdef void dsytrf(char *uplo, int *n, d *a, int *lda, int *ipiv, d *work, int *lwork, int *info) nogil

cdef void dsytri(char *uplo, int *n, d *a, int *lda, int *ipiv, d *work, int *info) nogil

cdef void dsytrs(char *uplo, int *n, int *nrhs, d *a, int *lda, int *ipiv, d *b, int *ldb, int *info) nogil

cdef void dtbcon(char *norm, char *uplo, char *diag, int *n, int *kd, d *ab, int *ldab, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dtbrfs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dtbtrs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, d *ab, int *ldab, d *b, int *ldb, int *info) nogil

cdef void dtgevc(char *side, char *howmny, bint *select, int *n, d *s, int *lds, d *p, int *ldp, d *vl, int *ldvl, d *vr, int *ldvr, int *mm, int *m, d *work, int *info) nogil

cdef void dtgex2(bint *wantq, bint *wantz, int *n, d *a, int *lda, d *b, int *ldb, d *q, int *ldq, d *z, int *ldz, int *j1, int *n1, int *n2, d *work, int *lwork, int *info) nogil

cdef void dtgexc(bint *wantq, bint *wantz, int *n, d *a, int *lda, d *b, int *ldb, d *q, int *ldq, d *z, int *ldz, int *ifst, int *ilst, d *work, int *lwork, int *info) nogil

cdef void dtgsen(int *ijob, bint *wantq, bint *wantz, bint *select, int *n, d *a, int *lda, d *b, int *ldb, d *alphar, d *alphai, d *beta, d *q, int *ldq, d *z, int *ldz, int *m, d *pl, d *pr, d *dif, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dtgsja(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, int *k, int *l, d *a, int *lda, d *b, int *ldb, d *tola, d *tolb, d *alpha, d *beta, d *u, int *ldu, d *v, int *ldv, d *q, int *ldq, d *work, int *ncycle, int *info) nogil

cdef void dtgsna(char *job, char *howmny, bint *select, int *n, d *a, int *lda, d *b, int *ldb, d *vl, int *ldvl, d *vr, int *ldvr, d *s, d *dif, int *mm, int *m, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dtgsy2(char *trans, int *ijob, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, d *d, int *ldd, d *e, int *lde, d *f, int *ldf, d *scale, d *rdsum, d *rdscal, int *iwork, int *pq, int *info) nogil

cdef void dtgsyl(char *trans, int *ijob, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, d *d, int *ldd, d *e, int *lde, d *f, int *ldf, d *scale, d *dif, d *work, int *lwork, int *iwork, int *info) nogil

cdef void dtpcon(char *norm, char *uplo, char *diag, int *n, d *ap, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dtprfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *ap, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dtptri(char *uplo, char *diag, int *n, d *ap, int *info) nogil

cdef void dtptrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *ap, d *b, int *ldb, int *info) nogil

cdef void dtrcon(char *norm, char *uplo, char *diag, int *n, d *a, int *lda, d *rcond, d *work, int *iwork, int *info) nogil

cdef void dtrevc(char *side, char *howmny, bint *select, int *n, d *t, int *ldt, d *vl, int *ldvl, d *vr, int *ldvr, int *mm, int *m, d *work, int *info) nogil

cdef void dtrexc(char *compq, int *n, d *t, int *ldt, d *q, int *ldq, int *ifst, int *ilst, d *work, int *info) nogil

cdef void dtrrfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, d *x, int *ldx, d *ferr, d *berr, d *work, int *iwork, int *info) nogil

cdef void dtrsen(char *job, char *compq, bint *select, int *n, d *t, int *ldt, d *q, int *ldq, d *wr, d *wi, int *m, d *s, d *sep, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void dtrsna(char *job, char *howmny, bint *select, int *n, d *t, int *ldt, d *vl, int *ldvl, d *vr, int *ldvr, d *s, d *sep, int *mm, int *m, d *work, int *ldwork, int *iwork, int *info) nogil

cdef void dtrsyl(char *trana, char *tranb, int *isgn, int *m, int *n, d *a, int *lda, d *b, int *ldb, d *c, int *ldc, d *scale, int *info) nogil

cdef void dtrti2(char *uplo, char *diag, int *n, d *a, int *lda, int *info) nogil

cdef void dtrtri(char *uplo, char *diag, int *n, d *a, int *lda, int *info) nogil

cdef void dtrtrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, d *a, int *lda, d *b, int *ldb, int *info) nogil

cdef void dtzrqf(int *m, int *n, d *a, int *lda, d *tau, int *info) nogil

cdef void dtzrzf(int *m, int *n, d *a, int *lda, d *tau, d *work, int *lwork, int *info) nogil

cdef d dzsum1(int *n, z *cx, int *incx) nogil

cdef int icmax1(int *n, c *cx, int *incx) nogil

cdef int ieeeck(int *ispec, s *zero, s *one) nogil

cdef int ilaenv(int *ispec, char *name, char *opts, int *n1, int *n2, int *n3, int *n4) nogil

cdef int iparmq(int *ispec, char *name, char *opts, int *n, int *ilo, int *ihi, int *lwork) nogil

cdef int izmax1(int *n, z *cx, int *incx) nogil

cdef bint lsamen(int *n, char *ca, char *cb) nogil

cdef void sbdsdc(char *uplo, char *compq, int *n, s *d, s *e, s *u, int *ldu, s *vt, int *ldvt, s *q, int *iq, s *work, int *iwork, int *info) nogil

cdef void sbdsqr(char *uplo, int *n, int *ncvt, int *nru, int *ncc, s *d, s *e, s *vt, int *ldvt, s *u, int *ldu, s *c, int *ldc, s *work, int *info) nogil

cdef s scsum1(int *n, c *cx, int *incx) nogil

cdef void sdisna(char *job, int *m, int *n, s *d, s *sep, int *info) nogil

cdef void sgbbrd(char *vect, int *m, int *n, int *ncc, int *kl, int *ku, s *ab, int *ldab, s *d, s *e, s *q, int *ldq, s *pt, int *ldpt, s *c, int *ldc, s *work, int *info) nogil

cdef void sgbcon(char *norm, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void sgbequ(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, s *r, s *c, s *rowcnd, s *colcnd, s *amax, int *info) nogil

cdef void sgbrfs(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, s *afb, int *ldafb, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgbsv(int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sgbsvx(char *fact, char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, s *afb, int *ldafb, int *ipiv, char *equed, s *r, s *c, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgbtf2(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info) nogil

cdef void sgbtrf(int *m, int *n, int *kl, int *ku, s *ab, int *ldab, int *ipiv, int *info) nogil

cdef void sgbtrs(char *trans, int *n, int *kl, int *ku, int *nrhs, s *ab, int *ldab, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sgebak(char *job, char *side, int *n, int *ilo, int *ihi, s *scale, int *m, s *v, int *ldv, int *info) nogil

cdef void sgebal(char *job, int *n, s *a, int *lda, int *ilo, int *ihi, s *scale, int *info) nogil

cdef void sgebd2(int *m, int *n, s *a, int *lda, s *d, s *e, s *tauq, s *taup, s *work, int *info) nogil

cdef void sgebrd(int *m, int *n, s *a, int *lda, s *d, s *e, s *tauq, s *taup, s *work, int *lwork, int *info) nogil

cdef void sgecon(char *norm, int *n, s *a, int *lda, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void sgeequ(int *m, int *n, s *a, int *lda, s *r, s *c, s *rowcnd, s *colcnd, s *amax, int *info) nogil

cdef void sgees(char *jobvs, char *sort, sselect2 *select, int *n, s *a, int *lda, int *sdim, s *wr, s *wi, s *vs, int *ldvs, s *work, int *lwork, bint *bwork, int *info) nogil

cdef void sgeesx(char *jobvs, char *sort, sselect2 *select, char *sense, int *n, s *a, int *lda, int *sdim, s *wr, s *wi, s *vs, int *ldvs, s *rconde, s *rcondv, s *work, int *lwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void sgeev(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *wr, s *wi, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, int *info) nogil

cdef void sgeevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, s *a, int *lda, s *wr, s *wi, s *vl, int *ldvl, s *vr, int *ldvr, int *ilo, int *ihi, s *scale, s *abnrm, s *rconde, s *rcondv, s *work, int *lwork, int *iwork, int *info) nogil

cdef void sgegs(char *jobvsl, char *jobvsr, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *vsl, int *ldvsl, s *vsr, int *ldvsr, s *work, int *lwork, int *info) nogil

cdef void sgegv(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, int *info) nogil

cdef void sgehd2(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sgehrd(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgelq2(int *m, int *n, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sgelqf(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgels(char *trans, int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *work, int *lwork, int *info) nogil

cdef void sgelsd(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, int *iwork, int *info) nogil

cdef void sgelss(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *s, s *rcond, int *rank, s *work, int *lwork, int *info) nogil

cdef void sgelsx(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *jpvt, s *rcond, int *rank, s *work, int *info) nogil

cdef void sgelsy(int *m, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *jpvt, s *rcond, int *rank, s *work, int *lwork, int *info) nogil

cdef void sgeql2(int *m, int *n, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sgeqlf(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgeqp3(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgeqpf(int *m, int *n, s *a, int *lda, int *jpvt, s *tau, s *work, int *info) nogil

cdef void sgeqr2(int *m, int *n, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sgeqrf(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgerfs(char *trans, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgerq2(int *m, int *n, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sgerqf(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sgesc2(int *n, s *a, int *lda, s *rhs, int *ipiv, int *jpiv, s *scale) nogil

cdef void sgesdd(char *jobz, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, int *iwork, int *info) nogil

cdef void sgesv(int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sgesvd(char *jobu, char *jobvt, int *m, int *n, s *a, int *lda, s *s, s *u, int *ldu, s *vt, int *ldvt, s *work, int *lwork, int *info) nogil

cdef void sgesvx(char *fact, char *trans, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, int *ipiv, char *equed, s *r, s *c, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgetc2(int *n, s *a, int *lda, int *ipiv, int *jpiv, int *info) nogil

cdef void sgetf2(int *m, int *n, s *a, int *lda, int *ipiv, int *info) nogil

cdef void sgetrf(int *m, int *n, s *a, int *lda, int *ipiv, int *info) nogil

cdef void sgetri(int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info) nogil

cdef void sgetrs(char *trans, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sggbak(char *job, char *side, int *n, int *ilo, int *ihi, s *lscale, s *rscale, int *m, s *v, int *ldv, int *info) nogil

cdef void sggbal(char *job, int *n, s *a, int *lda, s *b, int *ldb, int *ilo, int *ihi, s *lscale, s *rscale, s *work, int *info) nogil

cdef void sgges(char *jobvsl, char *jobvsr, char *sort, sselect3 *selctg, int *n, s *a, int *lda, s *b, int *ldb, int *sdim, s *alphar, s *alphai, s *beta, s *vsl, int *ldvsl, s *vsr, int *ldvsr, s *work, int *lwork, bint *bwork, int *info) nogil

cdef void sggesx(char *jobvsl, char *jobvsr, char *sort, sselect3 *selctg, char *sense, int *n, s *a, int *lda, s *b, int *ldb, int *sdim, s *alphar, s *alphai, s *beta, s *vsl, int *ldvsl, s *vsr, int *ldvsr, s *rconde, s *rcondv, s *work, int *lwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void sggev(char *jobvl, char *jobvr, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, s *work, int *lwork, int *info) nogil

cdef void sggevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *vl, int *ldvl, s *vr, int *ldvr, int *ilo, int *ihi, s *lscale, s *rscale, s *abnrm, s *bbnrm, s *rconde, s *rcondv, s *work, int *lwork, int *iwork, bint *bwork, int *info) nogil

cdef void sggglm(int *n, int *m, int *p, s *a, int *lda, s *b, int *ldb, s *d, s *x, s *y, s *work, int *lwork, int *info) nogil

cdef void sgghrd(char *compq, char *compz, int *n, int *ilo, int *ihi, s *a, int *lda, s *b, int *ldb, s *q, int *ldq, s *z, int *ldz, int *info) nogil

cdef void sgglse(int *m, int *n, int *p, s *a, int *lda, s *b, int *ldb, s *c, s *d, s *x, s *work, int *lwork, int *info) nogil

cdef void sggqrf(int *n, int *m, int *p, s *a, int *lda, s *taua, s *b, int *ldb, s *taub, s *work, int *lwork, int *info) nogil

cdef void sggrqf(int *m, int *p, int *n, s *a, int *lda, s *taua, s *b, int *ldb, s *taub, s *work, int *lwork, int *info) nogil

cdef void sggsvd(char *jobu, char *jobv, char *jobq, int *m, int *n, int *p, int *k, int *l, s *a, int *lda, s *b, int *ldb, s *alpha, s *beta, s *u, int *ldu, s *v, int *ldv, s *q, int *ldq, s *work, int *iwork, int *info) nogil

cdef void sggsvp(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, s *a, int *lda, s *b, int *ldb, s *tola, s *tolb, int *k, int *l, s *u, int *ldu, s *v, int *ldv, s *q, int *ldq, int *iwork, s *tau, s *work, int *info) nogil

cdef void sgtcon(char *norm, int *n, s *dl, s *d, s *du, s *du2, int *ipiv, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void sgtrfs(char *trans, int *n, int *nrhs, s *dl, s *d, s *du, s *dlf, s *df, s *duf, s *du2, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgtsv(int *n, int *nrhs, s *dl, s *d, s *du, s *b, int *ldb, int *info) nogil

cdef void sgtsvx(char *fact, char *trans, int *n, int *nrhs, s *dl, s *d, s *du, s *dlf, s *df, s *duf, s *du2, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sgttrf(int *n, s *dl, s *d, s *du, s *du2, int *ipiv, int *info) nogil

cdef void sgttrs(char *trans, int *n, int *nrhs, s *dl, s *d, s *du, s *du2, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sgtts2(int *itrans, int *n, int *nrhs, s *dl, s *d, s *du, s *du2, int *ipiv, s *b, int *ldb) nogil

cdef void shgeqz(char *job, char *compq, char *compz, int *n, int *ilo, int *ihi, s *h, int *ldh, s *t, int *ldt, s *alphar, s *alphai, s *beta, s *q, int *ldq, s *z, int *ldz, s *work, int *lwork, int *info) nogil

cdef void shsein(char *side, char *eigsrc, char *initv, bint *select, int *n, s *h, int *ldh, s *wr, s *wi, s *vl, int *ldvl, s *vr, int *ldvr, int *mm, int *m, s *work, int *ifaill, int *ifailr, int *info) nogil

cdef void shseqr(char *job, char *compz, int *n, int *ilo, int *ihi, s *h, int *ldh, s *wr, s *wi, s *z, int *ldz, s *work, int *lwork, int *info) nogil

cdef void slacn2(int *n, s *v, s *x, int *isgn, s *est, int *kase, int *isave) nogil

cdef void slacon(int *n, s *v, s *x, int *isgn, s *est, int *kase) nogil

cdef s slamch(char *cmach) nogil

cdef s slangb(char *norm, int *n, int *kl, int *ku, s *ab, int *ldab, s *work) nogil

cdef s slange(char *norm, int *m, int *n, s *a, int *lda, s *work) nogil

cdef s slangt(char *norm, int *n, s *dl, s *d, s *du) nogil

cdef s slanhs(char *norm, int *n, s *a, int *lda, s *work) nogil

cdef s slansb(char *norm, char *uplo, int *n, int *k, s *ab, int *ldab, s *work) nogil

cdef s slansp(char *norm, char *uplo, int *n, s *ap, s *work) nogil

cdef s slanst(char *norm, int *n, s *d, s *e) nogil

cdef s slansy(char *norm, char *uplo, int *n, s *a, int *lda, s *work) nogil

cdef s slantb(char *norm, char *uplo, char *diag, int *n, int *k, s *ab, int *ldab, s *work) nogil

cdef s slantp(char *norm, char *uplo, char *diag, int *n, s *ap, s *work) nogil

cdef s slantr(char *norm, char *uplo, char *diag, int *m, int *n, s *a, int *lda, s *work) nogil

cdef void slanv2(s *a, s *b, s *c, s *d, s *rt1r, s *rt1i, s *rt2r, s *rt2i, s *cs, s *sn) nogil

cdef void slarf(char *side, int *m, int *n, s *v, int *incv, s *tau, s *c, int *ldc, s *work) nogil

cdef void slarz(char *side, int *m, int *n, int *l, s *v, int *incv, s *tau, s *c, int *ldc, s *work) nogil

cdef void slaswp(int *n, s *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil

cdef void slauum(char *uplo, int *n, s *a, int *lda, int *info) nogil

cdef void sopgtr(char *uplo, int *n, s *ap, s *tau, s *q, int *ldq, s *work, int *info) nogil

cdef void sopmtr(char *side, char *uplo, char *trans, int *m, int *n, s *ap, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sorg2l(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sorg2r(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sorgbr(char *vect, int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorghr(int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorgl2(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sorglq(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorgql(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorgqr(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorgr2(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *info) nogil

cdef void sorgrq(int *m, int *n, int *k, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorgtr(char *uplo, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void sorm2l(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sorm2r(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sormbr(char *vect, char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormhr(char *side, char *trans, int *m, int *n, int *ilo, int *ihi, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sorml2(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sormlq(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormql(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormqr(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormr2(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sormr3(char *side, char *trans, int *m, int *n, int *k, int *l, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *info) nogil

cdef void sormrq(char *side, char *trans, int *m, int *n, int *k, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormrz(char *side, char *trans, int *m, int *n, int *k, int *l, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void sormtr(char *side, char *uplo, char *trans, int *m, int *n, s *a, int *lda, s *tau, s *c, int *ldc, s *work, int *lwork, int *info) nogil

cdef void spbcon(char *uplo, int *n, int *kd, s *ab, int *ldab, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void spbequ(char *uplo, int *n, int *kd, s *ab, int *ldab, s *s, s *scond, s *amax, int *info) nogil

cdef void spbrfs(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *afb, int *ldafb, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void spbstf(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info) nogil

cdef void spbsv(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil

cdef void spbsvx(char *fact, char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *afb, int *ldafb, char *equed, s *s, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void spbtf2(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info) nogil

cdef void spbtrf(char *uplo, int *n, int *kd, s *ab, int *ldab, int *info) nogil

cdef void spbtrs(char *uplo, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil

cdef void spocon(char *uplo, int *n, s *a, int *lda, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void spoequ(int *n, s *a, int *lda, s *s, s *scond, s *amax, int *info) nogil

cdef void sporfs(char *uplo, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sposv(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil

cdef void sposvx(char *fact, char *uplo, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, char *equed, s *s, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void spotf2(char *uplo, int *n, s *a, int *lda, int *info) nogil

cdef void spotrf(char *uplo, int *n, s *a, int *lda, int *info) nogil

cdef void spotri(char *uplo, int *n, s *a, int *lda, int *info) nogil

cdef void spotrs(char *uplo, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil

cdef void sppcon(char *uplo, int *n, s *ap, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void sppequ(char *uplo, int *n, s *ap, s *s, s *scond, s *amax, int *info) nogil

cdef void spprfs(char *uplo, int *n, int *nrhs, s *ap, s *afp, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sppsv(char *uplo, int *n, int *nrhs, s *ap, s *b, int *ldb, int *info) nogil

cdef void sppsvx(char *fact, char *uplo, int *n, int *nrhs, s *ap, s *afp, char *equed, s *s, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void spptrf(char *uplo, int *n, s *ap, int *info) nogil

cdef void spptri(char *uplo, int *n, s *ap, int *info) nogil

cdef void spptrs(char *uplo, int *n, int *nrhs, s *ap, s *b, int *ldb, int *info) nogil

cdef void sptcon(int *n, s *d, s *e, s *anorm, s *rcond, s *work, int *info) nogil

cdef void spteqr(char *compz, int *n, s *d, s *e, s *z, int *ldz, s *work, int *info) nogil

cdef void sptrfs(int *n, int *nrhs, s *d, s *e, s *df, s *ef, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *info) nogil

cdef void sptsv(int *n, int *nrhs, s *d, s *e, s *b, int *ldb, int *info) nogil

cdef void sptsvx(char *fact, int *n, int *nrhs, s *d, s *e, s *df, s *ef, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *info) nogil

cdef void spttrf(int *n, s *d, s *e, int *info) nogil

cdef void spttrs(int *n, int *nrhs, s *d, s *e, s *b, int *ldb, int *info) nogil

cdef void sptts2(int *n, int *nrhs, s *d, s *e, s *b, int *ldb) nogil

cdef void srscl(int *n, s *sa, s *sx, int *incx) nogil

cdef void ssbev(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *info) nogil

cdef void ssbevd(char *jobz, char *uplo, int *n, int *kd, s *ab, int *ldab, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssbevx(char *jobz, char *range, char *uplo, int *n, int *kd, s *ab, int *ldab, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void ssbgst(char *vect, char *uplo, int *n, int *ka, int *kb, s *ab, int *ldab, s *bb, int *ldbb, s *x, int *ldx, s *work, int *info) nogil

cdef void ssbgv(char *jobz, char *uplo, int *n, int *ka, int *kb, s *ab, int *ldab, s *bb, int *ldbb, s *w, s *z, int *ldz, s *work, int *info) nogil

cdef void ssbgvd(char *jobz, char *uplo, int *n, int *ka, int *kb, s *ab, int *ldab, s *bb, int *ldbb, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssbgvx(char *jobz, char *range, char *uplo, int *n, int *ka, int *kb, s *ab, int *ldab, s *bb, int *ldbb, s *q, int *ldq, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void ssbtrd(char *vect, char *uplo, int *n, int *kd, s *ab, int *ldab, s *d, s *e, s *q, int *ldq, s *work, int *info) nogil

cdef void sspcon(char *uplo, int *n, s *ap, int *ipiv, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void sspev(char *jobz, char *uplo, int *n, s *ap, s *w, s *z, int *ldz, s *work, int *info) nogil

cdef void sspevd(char *jobz, char *uplo, int *n, s *ap, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sspevx(char *jobz, char *range, char *uplo, int *n, s *ap, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void sspgst(int *itype, char *uplo, int *n, s *ap, s *bp, int *info) nogil

cdef void sspgv(int *itype, char *jobz, char *uplo, int *n, s *ap, s *bp, s *w, s *z, int *ldz, s *work, int *info) nogil

cdef void sspgvd(int *itype, char *jobz, char *uplo, int *n, s *ap, s *bp, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sspgvx(int *itype, char *jobz, char *range, char *uplo, int *n, s *ap, s *bp, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void ssprfs(char *uplo, int *n, int *nrhs, s *ap, s *afp, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void sspsv(char *uplo, int *n, int *nrhs, s *ap, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sspsvx(char *fact, char *uplo, int *n, int *nrhs, s *ap, s *afp, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void ssptrd(char *uplo, int *n, s *ap, s *d, s *e, s *tau, int *info) nogil

cdef void ssptrf(char *uplo, int *n, s *ap, int *ipiv, int *info) nogil

cdef void ssptri(char *uplo, int *n, s *ap, int *ipiv, s *work, int *info) nogil

cdef void ssptrs(char *uplo, int *n, int *nrhs, s *ap, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void sstebz(char *range, char *order, int *n, s *vl, s *vu, int *il, int *iu, s *abstol, s *d, s *e, int *m, int *nsplit, s *w, int *iblock, int *isplit, s *work, int *iwork, int *info) nogil

cdef void sstedc(char *compz, int *n, s *d, s *e, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sstegr(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sstein(int *n, s *d, s *e, int *m, s *w, int *iblock, int *isplit, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void sstemr(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, int *m, s *w, s *z, int *ldz, int *nzc, int *isuppz, bint *tryrac, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssteqr(char *compz, int *n, s *d, s *e, s *z, int *ldz, s *work, int *info) nogil

cdef void ssterf(int *n, s *d, s *e, int *info) nogil

cdef void sstev(char *jobz, int *n, s *d, s *e, s *z, int *ldz, s *work, int *info) nogil

cdef void sstevd(char *jobz, int *n, s *d, s *e, s *z, int *ldz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sstevr(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void sstevx(char *jobz, char *range, int *n, s *d, s *e, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *iwork, int *ifail, int *info) nogil

cdef void ssycon(char *uplo, int *n, s *a, int *lda, int *ipiv, s *anorm, s *rcond, s *work, int *iwork, int *info) nogil

cdef void ssyev(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, int *info) nogil

cdef void ssyevd(char *jobz, char *uplo, int *n, s *a, int *lda, s *w, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssyevr(char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, int *isuppz, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssyevx(char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *ifail, int *info) nogil

cdef void ssygs2(int *itype, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, int *info) nogil

cdef void ssygst(int *itype, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, int *info) nogil

cdef void ssygv(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, int *info) nogil

cdef void ssygvd(int *itype, char *jobz, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *w, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ssygvx(int *itype, char *jobz, char *range, char *uplo, int *n, s *a, int *lda, s *b, int *ldb, s *vl, s *vu, int *il, int *iu, s *abstol, int *m, s *w, s *z, int *ldz, s *work, int *lwork, int *iwork, int *ifail, int *info) nogil

cdef void ssyrfs(char *uplo, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void ssysv(char *uplo, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, s *work, int *lwork, int *info) nogil

cdef void ssysvx(char *fact, char *uplo, int *n, int *nrhs, s *a, int *lda, s *af, int *ldaf, int *ipiv, s *b, int *ldb, s *x, int *ldx, s *rcond, s *ferr, s *berr, s *work, int *lwork, int *iwork, int *info) nogil

cdef void ssytd2(char *uplo, int *n, s *a, int *lda, s *d, s *e, s *tau, int *info) nogil

cdef void ssytf2(char *uplo, int *n, s *a, int *lda, int *ipiv, int *info) nogil

cdef void ssytrd(char *uplo, int *n, s *a, int *lda, s *d, s *e, s *tau, s *work, int *lwork, int *info) nogil

cdef void ssytrf(char *uplo, int *n, s *a, int *lda, int *ipiv, s *work, int *lwork, int *info) nogil

cdef void ssytri(char *uplo, int *n, s *a, int *lda, int *ipiv, s *work, int *info) nogil

cdef void ssytrs(char *uplo, int *n, int *nrhs, s *a, int *lda, int *ipiv, s *b, int *ldb, int *info) nogil

cdef void stbcon(char *norm, char *uplo, char *diag, int *n, int *kd, s *ab, int *ldab, s *rcond, s *work, int *iwork, int *info) nogil

cdef void stbrfs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void stbtrs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, s *ab, int *ldab, s *b, int *ldb, int *info) nogil

cdef void stgevc(char *side, char *howmny, bint *select, int *n, s *s, int *lds, s *p, int *ldp, s *vl, int *ldvl, s *vr, int *ldvr, int *mm, int *m, s *work, int *info) nogil

cdef void stgex2(bint *wantq, bint *wantz, int *n, s *a, int *lda, s *b, int *ldb, s *q, int *ldq, s *z, int *ldz, int *j1, int *n1, int *n2, s *work, int *lwork, int *info) nogil

cdef void stgexc(bint *wantq, bint *wantz, int *n, s *a, int *lda, s *b, int *ldb, s *q, int *ldq, s *z, int *ldz, int *ifst, int *ilst, s *work, int *lwork, int *info) nogil

cdef void stgsen(int *ijob, bint *wantq, bint *wantz, bint *select, int *n, s *a, int *lda, s *b, int *ldb, s *alphar, s *alphai, s *beta, s *q, int *ldq, s *z, int *ldz, int *m, s *pl, s *pr, s *dif, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void stgsja(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, int *k, int *l, s *a, int *lda, s *b, int *ldb, s *tola, s *tolb, s *alpha, s *beta, s *u, int *ldu, s *v, int *ldv, s *q, int *ldq, s *work, int *ncycle, int *info) nogil

cdef void stgsna(char *job, char *howmny, bint *select, int *n, s *a, int *lda, s *b, int *ldb, s *vl, int *ldvl, s *vr, int *ldvr, s *s, s *dif, int *mm, int *m, s *work, int *lwork, int *iwork, int *info) nogil

cdef void stgsy2(char *trans, int *ijob, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *d, int *ldd, s *e, int *lde, s *f, int *ldf, s *scale, s *rdsum, s *rdscal, int *iwork, int *pq, int *info) nogil

cdef void stgsyl(char *trans, int *ijob, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *d, int *ldd, s *e, int *lde, s *f, int *ldf, s *scale, s *dif, s *work, int *lwork, int *iwork, int *info) nogil

cdef void stpcon(char *norm, char *uplo, char *diag, int *n, s *ap, s *rcond, s *work, int *iwork, int *info) nogil

cdef void stprfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *ap, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void stptri(char *uplo, char *diag, int *n, s *ap, int *info) nogil

cdef void stptrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *ap, s *b, int *ldb, int *info) nogil

cdef void strcon(char *norm, char *uplo, char *diag, int *n, s *a, int *lda, s *rcond, s *work, int *iwork, int *info) nogil

cdef void strevc(char *side, char *howmny, bint *select, int *n, s *t, int *ldt, s *vl, int *ldvl, s *vr, int *ldvr, int *mm, int *m, s *work, int *info) nogil

cdef void strexc(char *compq, int *n, s *t, int *ldt, s *q, int *ldq, int *ifst, int *ilst, s *work, int *info) nogil

cdef void strrfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, s *x, int *ldx, s *ferr, s *berr, s *work, int *iwork, int *info) nogil

cdef void strsen(char *job, char *compq, bint *select, int *n, s *t, int *ldt, s *q, int *ldq, s *wr, s *wi, int *m, s *s, s *sep, s *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void strsna(char *job, char *howmny, bint *select, int *n, s *t, int *ldt, s *vl, int *ldvl, s *vr, int *ldvr, s *s, s *sep, int *mm, int *m, s *work, int *ldwork, int *iwork, int *info) nogil

cdef void strsyl(char *trana, char *tranb, int *isgn, int *m, int *n, s *a, int *lda, s *b, int *ldb, s *c, int *ldc, s *scale, int *info) nogil

cdef void strti2(char *uplo, char *diag, int *n, s *a, int *lda, int *info) nogil

cdef void strtri(char *uplo, char *diag, int *n, s *a, int *lda, int *info) nogil

cdef void strtrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, s *a, int *lda, s *b, int *ldb, int *info) nogil

cdef void stzrqf(int *m, int *n, s *a, int *lda, s *tau, int *info) nogil

cdef void stzrzf(int *m, int *n, s *a, int *lda, s *tau, s *work, int *lwork, int *info) nogil

cdef void xerbla(char *srname, int *info) nogil

cdef void zbdsqr(char *uplo, int *n, int *ncvt, int *nru, int *ncc, d *d, d *e, z *vt, int *ldvt, z *u, int *ldu, z *c, int *ldc, d *rwork, int *info) nogil

cdef void zcgesv(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, z *x, int *ldx, z *work, c *swork, d *rwork, int *iter, int *info) nogil

cdef void zdrscl(int *n, d *sa, z *sx, int *incx) nogil

cdef void zgbbrd(char *vect, int *m, int *n, int *ncc, int *kl, int *ku, z *ab, int *ldab, d *d, d *e, z *q, int *ldq, z *pt, int *ldpt, z *c, int *ldc, z *work, d *rwork, int *info) nogil

cdef void zgbcon(char *norm, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, d *anorm, d *rcond, z *work, d *rwork, int *info) nogil

cdef void zgbequ(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, d *r, d *c, d *rowcnd, d *colcnd, d *amax, int *info) nogil

cdef void zgbrfs(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, z *afb, int *ldafb, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgbsv(int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zgbsvx(char *fact, char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, z *afb, int *ldafb, int *ipiv, char *equed, d *r, d *c, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgbtf2(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info) nogil

cdef void zgbtrf(int *m, int *n, int *kl, int *ku, z *ab, int *ldab, int *ipiv, int *info) nogil

cdef void zgbtrs(char *trans, int *n, int *kl, int *ku, int *nrhs, z *ab, int *ldab, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zgebak(char *job, char *side, int *n, int *ilo, int *ihi, d *scale, int *m, z *v, int *ldv, int *info) nogil

cdef void zgebal(char *job, int *n, z *a, int *lda, int *ilo, int *ihi, d *scale, int *info) nogil

cdef void zgebd2(int *m, int *n, z *a, int *lda, d *d, d *e, z *tauq, z *taup, z *work, int *info) nogil

cdef void zgebrd(int *m, int *n, z *a, int *lda, d *d, d *e, z *tauq, z *taup, z *work, int *lwork, int *info) nogil

cdef void zgecon(char *norm, int *n, z *a, int *lda, d *anorm, d *rcond, z *work, d *rwork, int *info) nogil

cdef void zgeequ(int *m, int *n, z *a, int *lda, d *r, d *c, d *rowcnd, d *colcnd, d *amax, int *info) nogil

cdef void zgees(char *jobvs, char *sort, zselect1 *select, int *n, z *a, int *lda, int *sdim, z *w, z *vs, int *ldvs, z *work, int *lwork, d *rwork, bint *bwork, int *info) nogil

cdef void zgeesx(char *jobvs, char *sort, zselect1 *select, char *sense, int *n, z *a, int *lda, int *sdim, z *w, z *vs, int *ldvs, d *rconde, d *rcondv, z *work, int *lwork, d *rwork, bint *bwork, int *info) nogil

cdef void zgeev(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgeevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, z *a, int *lda, z *w, z *vl, int *ldvl, z *vr, int *ldvr, int *ilo, int *ihi, d *scale, d *abnrm, d *rconde, d *rcondv, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgegs(char *jobvsl, char *jobvsr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vsl, int *ldvsl, z *vsr, int *ldvsr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgegv(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgehd2(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zgehrd(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zgelq2(int *m, int *n, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zgelqf(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zgels(char *trans, int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, z *work, int *lwork, int *info) nogil

cdef void zgelsd(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, d *s, d *rcond, int *rank, z *work, int *lwork, d *rwork, int *iwork, int *info) nogil

cdef void zgelss(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, d *s, d *rcond, int *rank, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgelsx(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *jpvt, d *rcond, int *rank, z *work, d *rwork, int *info) nogil

cdef void zgelsy(int *m, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *jpvt, d *rcond, int *rank, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgeql2(int *m, int *n, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zgeqlf(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zgeqp3(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgeqpf(int *m, int *n, z *a, int *lda, int *jpvt, z *tau, z *work, d *rwork, int *info) nogil

cdef void zgeqr2(int *m, int *n, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zgeqrf(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zgerfs(char *trans, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgerq2(int *m, int *n, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zgerqf(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zgesc2(int *n, z *a, int *lda, z *rhs, int *ipiv, int *jpiv, d *scale) nogil

cdef void zgesdd(char *jobz, int *m, int *n, z *a, int *lda, d *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, d *rwork, int *iwork, int *info) nogil

cdef void zgesv(int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zgesvd(char *jobu, char *jobvt, int *m, int *n, z *a, int *lda, d *s, z *u, int *ldu, z *vt, int *ldvt, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zgesvx(char *fact, char *trans, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, char *equed, d *r, d *c, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgetc2(int *n, z *a, int *lda, int *ipiv, int *jpiv, int *info) nogil

cdef void zgetf2(int *m, int *n, z *a, int *lda, int *ipiv, int *info) nogil

cdef void zgetrf(int *m, int *n, z *a, int *lda, int *ipiv, int *info) nogil

cdef void zgetri(int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info) nogil

cdef void zgetrs(char *trans, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zggbak(char *job, char *side, int *n, int *ilo, int *ihi, d *lscale, d *rscale, int *m, z *v, int *ldv, int *info) nogil

cdef void zggbal(char *job, int *n, z *a, int *lda, z *b, int *ldb, int *ilo, int *ihi, d *lscale, d *rscale, d *work, int *info) nogil

cdef void zgges(char *jobvsl, char *jobvsr, char *sort, zselect2 *selctg, int *n, z *a, int *lda, z *b, int *ldb, int *sdim, z *alpha, z *beta, z *vsl, int *ldvsl, z *vsr, int *ldvsr, z *work, int *lwork, d *rwork, bint *bwork, int *info) nogil

cdef void zggesx(char *jobvsl, char *jobvsr, char *sort, zselect2 *selctg, char *sense, int *n, z *a, int *lda, z *b, int *ldb, int *sdim, z *alpha, z *beta, z *vsl, int *ldvsl, z *vsr, int *ldvsr, d *rconde, d *rcondv, z *work, int *lwork, d *rwork, int *iwork, int *liwork, bint *bwork, int *info) nogil

cdef void zggev(char *jobvl, char *jobvr, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zggevx(char *balanc, char *jobvl, char *jobvr, char *sense, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *vl, int *ldvl, z *vr, int *ldvr, int *ilo, int *ihi, d *lscale, d *rscale, d *abnrm, d *bbnrm, d *rconde, d *rcondv, z *work, int *lwork, d *rwork, int *iwork, bint *bwork, int *info) nogil

cdef void zggglm(int *n, int *m, int *p, z *a, int *lda, z *b, int *ldb, z *d, z *x, z *y, z *work, int *lwork, int *info) nogil

cdef void zgghrd(char *compq, char *compz, int *n, int *ilo, int *ihi, z *a, int *lda, z *b, int *ldb, z *q, int *ldq, z *z, int *ldz, int *info) nogil

cdef void zgglse(int *m, int *n, int *p, z *a, int *lda, z *b, int *ldb, z *c, z *d, z *x, z *work, int *lwork, int *info) nogil

cdef void zggqrf(int *n, int *m, int *p, z *a, int *lda, z *taua, z *b, int *ldb, z *taub, z *work, int *lwork, int *info) nogil

cdef void zggrqf(int *m, int *p, int *n, z *a, int *lda, z *taua, z *b, int *ldb, z *taub, z *work, int *lwork, int *info) nogil

cdef void zggsvd(char *jobu, char *jobv, char *jobq, int *m, int *n, int *p, int *k, int *l, z *a, int *lda, z *b, int *ldb, d *alpha, d *beta, z *u, int *ldu, z *v, int *ldv, z *q, int *ldq, z *work, d *rwork, int *iwork, int *info) nogil

cdef void zggsvp(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, z *a, int *lda, z *b, int *ldb, d *tola, d *tolb, int *k, int *l, z *u, int *ldu, z *v, int *ldv, z *q, int *ldq, int *iwork, d *rwork, z *tau, z *work, int *info) nogil

cdef void zgtcon(char *norm, int *n, z *dl, z *d, z *du, z *du2, int *ipiv, d *anorm, d *rcond, z *work, int *info) nogil

cdef void zgtrfs(char *trans, int *n, int *nrhs, z *dl, z *d, z *du, z *dlf, z *df, z *duf, z *du2, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgtsv(int *n, int *nrhs, z *dl, z *d, z *du, z *b, int *ldb, int *info) nogil

cdef void zgtsvx(char *fact, char *trans, int *n, int *nrhs, z *dl, z *d, z *du, z *dlf, z *df, z *duf, z *du2, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zgttrf(int *n, z *dl, z *d, z *du, z *du2, int *ipiv, int *info) nogil

cdef void zgttrs(char *trans, int *n, int *nrhs, z *dl, z *d, z *du, z *du2, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zgtts2(int *itrans, int *n, int *nrhs, z *dl, z *d, z *du, z *du2, int *ipiv, z *b, int *ldb) nogil

cdef void zhbev(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, d *w, z *z, int *ldz, z *work, d *rwork, int *info) nogil

cdef void zhbevd(char *jobz, char *uplo, int *n, int *kd, z *ab, int *ldab, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zhbevx(char *jobz, char *range, char *uplo, int *n, int *kd, z *ab, int *ldab, z *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zhbgst(char *vect, char *uplo, int *n, int *ka, int *kb, z *ab, int *ldab, z *bb, int *ldbb, z *x, int *ldx, z *work, d *rwork, int *info) nogil

cdef void zhbgv(char *jobz, char *uplo, int *n, int *ka, int *kb, z *ab, int *ldab, z *bb, int *ldbb, d *w, z *z, int *ldz, z *work, d *rwork, int *info) nogil

cdef void zhbgvd(char *jobz, char *uplo, int *n, int *ka, int *kb, z *ab, int *ldab, z *bb, int *ldbb, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zhbgvx(char *jobz, char *range, char *uplo, int *n, int *ka, int *kb, z *ab, int *ldab, z *bb, int *ldbb, z *q, int *ldq, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zhbtrd(char *vect, char *uplo, int *n, int *kd, z *ab, int *ldab, d *d, d *e, z *q, int *ldq, z *work, int *info) nogil

cdef void zhecon(char *uplo, int *n, z *a, int *lda, int *ipiv, d *anorm, d *rcond, z *work, int *info) nogil

cdef void zheev(char *jobz, char *uplo, int *n, z *a, int *lda, d *w, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zheevd(char *jobz, char *uplo, int *n, z *a, int *lda, d *w, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zheevr(char *jobz, char *range, char *uplo, int *n, z *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, int *isuppz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zheevx(char *jobz, char *range, char *uplo, int *n, z *a, int *lda, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zhegs2(int *itype, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, int *info) nogil

cdef void zhegst(int *itype, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, int *info) nogil

cdef void zhegv(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *w, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zhegvd(int *itype, char *jobz, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *w, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zhegvx(int *itype, char *jobz, char *range, char *uplo, int *n, z *a, int *lda, z *b, int *ldb, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zherfs(char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zhesv(char *uplo, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, z *work, int *lwork, int *info) nogil

cdef void zhesvx(char *fact, char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zhetd2(char *uplo, int *n, z *a, int *lda, d *d, d *e, z *tau, int *info) nogil

cdef void zhetf2(char *uplo, int *n, z *a, int *lda, int *ipiv, int *info) nogil

cdef void zhetrd(char *uplo, int *n, z *a, int *lda, d *d, d *e, z *tau, z *work, int *lwork, int *info) nogil

cdef void zhetrf(char *uplo, int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info) nogil

cdef void zhetri(char *uplo, int *n, z *a, int *lda, int *ipiv, z *work, int *info) nogil

cdef void zhetrs(char *uplo, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zhgeqz(char *job, char *compq, char *compz, int *n, int *ilo, int *ihi, z *h, int *ldh, z *t, int *ldt, z *alpha, z *beta, z *q, int *ldq, z *z, int *ldz, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zhpcon(char *uplo, int *n, z *ap, int *ipiv, d *anorm, d *rcond, z *work, int *info) nogil

cdef void zhpev(char *jobz, char *uplo, int *n, z *ap, d *w, z *z, int *ldz, z *work, d *rwork, int *info) nogil

cdef void zhpevd(char *jobz, char *uplo, int *n, z *ap, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zhpevx(char *jobz, char *range, char *uplo, int *n, z *ap, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zhpgst(int *itype, char *uplo, int *n, z *ap, z *bp, int *info) nogil

cdef void zhpgv(int *itype, char *jobz, char *uplo, int *n, z *ap, z *bp, d *w, z *z, int *ldz, z *work, d *rwork, int *info) nogil

cdef void zhpgvd(int *itype, char *jobz, char *uplo, int *n, z *ap, z *bp, d *w, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zhpgvx(int *itype, char *jobz, char *range, char *uplo, int *n, z *ap, z *bp, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, z *work, d *rwork, int *iwork, int *ifail, int *info) nogil

cdef void zhprfs(char *uplo, int *n, int *nrhs, z *ap, z *afp, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zhpsv(char *uplo, int *n, int *nrhs, z *ap, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zhpsvx(char *fact, char *uplo, int *n, int *nrhs, z *ap, z *afp, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zhptrd(char *uplo, int *n, z *ap, d *d, d *e, z *tau, int *info) nogil

cdef void zhptrf(char *uplo, int *n, z *ap, int *ipiv, int *info) nogil

cdef void zhptri(char *uplo, int *n, z *ap, int *ipiv, z *work, int *info) nogil

cdef void zhptrs(char *uplo, int *n, int *nrhs, z *ap, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zhsein(char *side, char *eigsrc, char *initv, bint *select, int *n, z *h, int *ldh, z *w, z *vl, int *ldvl, z *vr, int *ldvr, int *mm, int *m, z *work, d *rwork, int *ifaill, int *ifailr, int *info) nogil

cdef void zhseqr(char *job, char *compz, int *n, int *ilo, int *ihi, z *h, int *ldh, z *w, z *z, int *ldz, z *work, int *lwork, int *info) nogil

cdef void zlacn2(int *n, z *v, z *x, d *est, int *kase, int *isave) nogil

cdef void zlacon(int *n, z *v, z *x, d *est, int *kase) nogil

cdef d zlangb(char *norm, int *n, int *kl, int *ku, z *ab, int *ldab, d *work) nogil

cdef d zlange(char *norm, int *m, int *n, z *a, int *lda, d *work) nogil

cdef d zlangt(char *norm, int *n, z *dl, z *d, z *du) nogil

cdef d zlanhb(char *norm, char *uplo, int *n, int *k, z *ab, int *ldab, d *work) nogil

cdef d zlanhe(char *norm, char *uplo, int *n, z *a, int *lda, d *work) nogil

cdef d zlanhp(char *norm, char *uplo, int *n, z *ap, d *work) nogil

cdef d zlanhs(char *norm, int *n, z *a, int *lda, d *work) nogil

cdef d zlanht(char *norm, int *n, d *d, z *e) nogil

cdef d zlansb(char *norm, char *uplo, int *n, int *k, z *ab, int *ldab, d *work) nogil

cdef d zlansp(char *norm, char *uplo, int *n, z *ap, d *work) nogil

cdef d zlansy(char *norm, char *uplo, int *n, z *a, int *lda, d *work) nogil

cdef d zlantb(char *norm, char *uplo, char *diag, int *n, int *k, z *ab, int *ldab, d *work) nogil

cdef d zlantp(char *norm, char *uplo, char *diag, int *n, z *ap, d *work) nogil

cdef d zlantr(char *norm, char *uplo, char *diag, int *m, int *n, z *a, int *lda, d *work) nogil

cdef void zlarf(char *side, int *m, int *n, z *v, int *incv, z *tau, z *c, int *ldc, z *work) nogil

cdef void zlarz(char *side, int *m, int *n, int *l, z *v, int *incv, z *tau, z *c, int *ldc, z *work) nogil

cdef void zlaswp(int *n, z *a, int *lda, int *k1, int *k2, int *ipiv, int *incx) nogil

cdef void zlauum(char *uplo, int *n, z *a, int *lda, int *info) nogil

cdef void zpbcon(char *uplo, int *n, int *kd, z *ab, int *ldab, d *anorm, d *rcond, z *work, d *rwork, int *info) nogil

cdef void zpbequ(char *uplo, int *n, int *kd, z *ab, int *ldab, d *s, d *scond, d *amax, int *info) nogil

cdef void zpbrfs(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *afb, int *ldafb, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zpbstf(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info) nogil

cdef void zpbsv(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil

cdef void zpbsvx(char *fact, char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *afb, int *ldafb, char *equed, d *s, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zpbtf2(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info) nogil

cdef void zpbtrf(char *uplo, int *n, int *kd, z *ab, int *ldab, int *info) nogil

cdef void zpbtrs(char *uplo, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil

cdef void zpocon(char *uplo, int *n, z *a, int *lda, d *anorm, d *rcond, z *work, d *rwork, int *info) nogil

cdef void zpoequ(int *n, z *a, int *lda, d *s, d *scond, d *amax, int *info) nogil

cdef void zporfs(char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zposv(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil

cdef void zposvx(char *fact, char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, char *equed, d *s, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zpotf2(char *uplo, int *n, z *a, int *lda, int *info) nogil

cdef void zpotrf(char *uplo, int *n, z *a, int *lda, int *info) nogil

cdef void zpotri(char *uplo, int *n, z *a, int *lda, int *info) nogil

cdef void zpotrs(char *uplo, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil

cdef void zppcon(char *uplo, int *n, z *ap, d *anorm, d *rcond, z *work, d *rwork, int *info) nogil

cdef void zppequ(char *uplo, int *n, z *ap, d *s, d *scond, d *amax, int *info) nogil

cdef void zpprfs(char *uplo, int *n, int *nrhs, z *ap, z *afp, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zppsv(char *uplo, int *n, int *nrhs, z *ap, z *b, int *ldb, int *info) nogil

cdef void zppsvx(char *fact, char *uplo, int *n, int *nrhs, z *ap, z *afp, char *equed, d *s, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zpptrf(char *uplo, int *n, z *ap, int *info) nogil

cdef void zpptri(char *uplo, int *n, z *ap, int *info) nogil

cdef void zpptrs(char *uplo, int *n, int *nrhs, z *ap, z *b, int *ldb, int *info) nogil

cdef void zptcon(int *n, d *d, z *e, d *anorm, d *rcond, d *rwork, int *info) nogil

cdef void zpteqr(char *compz, int *n, d *d, d *e, z *z, int *ldz, d *work, int *info) nogil

cdef void zptrfs(char *uplo, int *n, int *nrhs, d *d, z *e, d *df, z *ef, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zptsv(int *n, int *nrhs, d *d, z *e, z *b, int *ldb, int *info) nogil

cdef void zptsvx(char *fact, int *n, int *nrhs, d *d, z *e, d *df, z *ef, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zpttrf(int *n, d *d, z *e, int *info) nogil

cdef void zpttrs(char *uplo, int *n, int *nrhs, d *d, z *e, z *b, int *ldb, int *info) nogil

cdef void zptts2(int *iuplo, int *n, int *nrhs, d *d, z *e, z *b, int *ldb) nogil

cdef void zrot(int *n, z *cx, int *incx, z *cy, int *incy, d *c, z *s) nogil

cdef void zspcon(char *uplo, int *n, z *ap, int *ipiv, d *anorm, d *rcond, z *work, int *info) nogil

cdef void zspmv(char *uplo, int *n, z *alpha, z *ap, z *x, int *incx, z *beta, z *y, int *incy) nogil

cdef void zspr(char *uplo, int *n, z *alpha, z *x, int *incx, z *ap) nogil

cdef void zsprfs(char *uplo, int *n, int *nrhs, z *ap, z *afp, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zspsv(char *uplo, int *n, int *nrhs, z *ap, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zspsvx(char *fact, char *uplo, int *n, int *nrhs, z *ap, z *afp, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zsptrf(char *uplo, int *n, z *ap, int *ipiv, int *info) nogil

cdef void zsptri(char *uplo, int *n, z *ap, int *ipiv, z *work, int *info) nogil

cdef void zsptrs(char *uplo, int *n, int *nrhs, z *ap, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void zstedc(char *compz, int *n, d *d, d *e, z *z, int *ldz, z *work, int *lwork, d *rwork, int *lrwork, int *iwork, int *liwork, int *info) nogil

cdef void zstegr(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, d *abstol, int *m, d *w, z *z, int *ldz, int *isuppz, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void zstein(int *n, d *d, d *e, int *m, d *w, int *iblock, int *isplit, z *z, int *ldz, d *work, int *iwork, int *ifail, int *info) nogil

cdef void zstemr(char *jobz, char *range, int *n, d *d, d *e, d *vl, d *vu, int *il, int *iu, int *m, d *w, z *z, int *ldz, int *nzc, int *isuppz, bint *tryrac, d *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void zsteqr(char *compz, int *n, d *d, d *e, z *z, int *ldz, d *work, int *info) nogil

cdef void zsycon(char *uplo, int *n, z *a, int *lda, int *ipiv, d *anorm, d *rcond, z *work, int *info) nogil

cdef void zsymv(char *uplo, int *n, z *alpha, z *a, int *lda, z *x, int *incx, z *beta, z *y, int *incy) nogil

cdef void zsyr(char *uplo, int *n, z *alpha, z *x, int *incx, z *a, int *lda) nogil

cdef void zsyrfs(char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void zsysv(char *uplo, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, z *work, int *lwork, int *info) nogil

cdef void zsysvx(char *fact, char *uplo, int *n, int *nrhs, z *a, int *lda, z *af, int *ldaf, int *ipiv, z *b, int *ldb, z *x, int *ldx, d *rcond, d *ferr, d *berr, z *work, int *lwork, d *rwork, int *info) nogil

cdef void zsytf2(char *uplo, int *n, z *a, int *lda, int *ipiv, int *info) nogil

cdef void zsytrf(char *uplo, int *n, z *a, int *lda, int *ipiv, z *work, int *lwork, int *info) nogil

cdef void zsytri(char *uplo, int *n, z *a, int *lda, int *ipiv, z *work, int *info) nogil

cdef void zsytrs(char *uplo, int *n, int *nrhs, z *a, int *lda, int *ipiv, z *b, int *ldb, int *info) nogil

cdef void ztbcon(char *norm, char *uplo, char *diag, int *n, int *kd, z *ab, int *ldab, d *rcond, z *work, d *rwork, int *info) nogil

cdef void ztbrfs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void ztbtrs(char *uplo, char *trans, char *diag, int *n, int *kd, int *nrhs, z *ab, int *ldab, z *b, int *ldb, int *info) nogil

cdef void ztgevc(char *side, char *howmny, bint *select, int *n, z *s, int *lds, z *p, int *ldp, z *vl, int *ldvl, z *vr, int *ldvr, int *mm, int *m, z *work, d *rwork, int *info) nogil

cdef void ztgex2(bint *wantq, bint *wantz, int *n, z *a, int *lda, z *b, int *ldb, z *q, int *ldq, z *z, int *ldz, int *j1, int *info) nogil

cdef void ztgexc(bint *wantq, bint *wantz, int *n, z *a, int *lda, z *b, int *ldb, z *q, int *ldq, z *z, int *ldz, int *ifst, int *ilst, int *info) nogil

cdef void ztgsen(int *ijob, bint *wantq, bint *wantz, bint *select, int *n, z *a, int *lda, z *b, int *ldb, z *alpha, z *beta, z *q, int *ldq, z *z, int *ldz, int *m, d *pl, d *pr, d *dif, z *work, int *lwork, int *iwork, int *liwork, int *info) nogil

cdef void ztgsja(char *jobu, char *jobv, char *jobq, int *m, int *p, int *n, int *k, int *l, z *a, int *lda, z *b, int *ldb, d *tola, d *tolb, d *alpha, d *beta, z *u, int *ldu, z *v, int *ldv, z *q, int *ldq, z *work, int *ncycle, int *info) nogil

cdef void ztgsna(char *job, char *howmny, bint *select, int *n, z *a, int *lda, z *b, int *ldb, z *vl, int *ldvl, z *vr, int *ldvr, d *s, d *dif, int *mm, int *m, z *work, int *lwork, int *iwork, int *info) nogil

cdef void ztgsy2(char *trans, int *ijob, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, z *d, int *ldd, z *e, int *lde, z *f, int *ldf, d *scale, d *rdsum, d *rdscal, int *info) nogil

cdef void ztgsyl(char *trans, int *ijob, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, z *d, int *ldd, z *e, int *lde, z *f, int *ldf, d *scale, d *dif, z *work, int *lwork, int *iwork, int *info) nogil

cdef void ztpcon(char *norm, char *uplo, char *diag, int *n, z *ap, d *rcond, z *work, d *rwork, int *info) nogil

cdef void ztprfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *ap, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void ztptri(char *uplo, char *diag, int *n, z *ap, int *info) nogil

cdef void ztptrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *ap, z *b, int *ldb, int *info) nogil

cdef void ztrcon(char *norm, char *uplo, char *diag, int *n, z *a, int *lda, d *rcond, z *work, d *rwork, int *info) nogil

cdef void ztrevc(char *side, char *howmny, bint *select, int *n, z *t, int *ldt, z *vl, int *ldvl, z *vr, int *ldvr, int *mm, int *m, z *work, d *rwork, int *info) nogil

cdef void ztrexc(char *compq, int *n, z *t, int *ldt, z *q, int *ldq, int *ifst, int *ilst, int *info) nogil

cdef void ztrrfs(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, z *x, int *ldx, d *ferr, d *berr, z *work, d *rwork, int *info) nogil

cdef void ztrsen(char *job, char *compq, bint *select, int *n, z *t, int *ldt, z *q, int *ldq, z *w, int *m, d *s, d *sep, z *work, int *lwork, int *info) nogil

cdef void ztrsna(char *job, char *howmny, bint *select, int *n, z *t, int *ldt, z *vl, int *ldvl, z *vr, int *ldvr, d *s, d *sep, int *mm, int *m, z *work, int *ldwork, d *rwork, int *info) nogil

cdef void ztrsyl(char *trana, char *tranb, int *isgn, int *m, int *n, z *a, int *lda, z *b, int *ldb, z *c, int *ldc, d *scale, int *info) nogil

cdef void ztrti2(char *uplo, char *diag, int *n, z *a, int *lda, int *info) nogil

cdef void ztrtri(char *uplo, char *diag, int *n, z *a, int *lda, int *info) nogil

cdef void ztrtrs(char *uplo, char *trans, char *diag, int *n, int *nrhs, z *a, int *lda, z *b, int *ldb, int *info) nogil

cdef void ztzrqf(int *m, int *n, z *a, int *lda, z *tau, int *info) nogil

cdef void ztzrzf(int *m, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zung2l(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zung2r(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zungbr(char *vect, int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zunghr(int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zungl2(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zunglq(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zungql(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zungqr(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zungr2(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *info) nogil

cdef void zungrq(int *m, int *n, int *k, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zungtr(char *uplo, int *n, z *a, int *lda, z *tau, z *work, int *lwork, int *info) nogil

cdef void zunm2l(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *info) nogil

cdef void zunm2r(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *info) nogil

cdef void zunmbr(char *vect, char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmhr(char *side, char *trans, int *m, int *n, int *ilo, int *ihi, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunml2(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *info) nogil

cdef void zunmlq(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmql(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmqr(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmr2(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *info) nogil

cdef void zunmr3(char *side, char *trans, int *m, int *n, int *k, int *l, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *info) nogil

cdef void zunmrq(char *side, char *trans, int *m, int *n, int *k, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmrz(char *side, char *trans, int *m, int *n, int *k, int *l, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zunmtr(char *side, char *uplo, char *trans, int *m, int *n, z *a, int *lda, z *tau, z *c, int *ldc, z *work, int *lwork, int *info) nogil

cdef void zupgtr(char *uplo, int *n, z *ap, z *tau, z *q, int *ldq, z *work, int *info) nogil

cdef void zupmtr(char *side, char *uplo, char *trans, int *m, int *n, z *ap, z *tau, z *c, int *ldc, z *work, int *info) nogil
