#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

void F77_SUB(sa)(double *y, double *xx, int *nobs, int *k, double *b,
				double *tau, int *max, double *rt, double *eps, int *ns,
				int *nt, int *neps, int *maxevl, double *lb, double *ub,
				double *c, double *iseed1, double *iseed2, double *t,
				double *vm, double *bopt, double *fopt, int* nacc,
				int* nfcnev, int *nobds, int *ier, double *fstar,
				double *xp, int *nacp, int *aflag, double *sgn);

static const R_FortranMethodDef FortEntries[] = {
    {"sa", (DL_FUNC) &F77_SUB(sa), 31},
    {NULL, NULL, 0}
};

void R_init_KernSmooth(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, NULL, FortEntries, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
