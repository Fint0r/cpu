/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_369(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_145(char*, char *);
extern void execute_363(char*, char *);
extern void execute_114(char*, char *);
extern void execute_117(char*, char *);
extern void execute_119(char*, char *);
extern void execute_127(char*, char *);
extern void execute_132(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_155(char*, char *);
extern void execute_157(char*, char *);
extern void execute_162(char*, char *);
extern void execute_165(char*, char *);
extern void execute_169(char*, char *);
extern void execute_171(char*, char *);
extern void execute_173(char*, char *);
extern void execute_175(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_190(char*, char *);
extern void execute_194(char*, char *);
extern void execute_192(char*, char *);
extern void execute_196(char*, char *);
extern void execute_201(char*, char *);
extern void execute_203(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_213(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_222(char*, char *);
extern void execute_225(char*, char *);
extern void execute_227(char*, char *);
extern void execute_231(char*, char *);
extern void execute_233(char*, char *);
extern void execute_239(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_265(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_252(char*, char *);
extern void execute_255(char*, char *);
extern void execute_258(char*, char *);
extern void execute_264(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_280(char*, char *);
extern void execute_282(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[61] = {(funcp)execute_369, (funcp)execute_129, (funcp)execute_130, (funcp)execute_145, (funcp)execute_363, (funcp)execute_114, (funcp)execute_117, (funcp)execute_119, (funcp)execute_127, (funcp)execute_132, (funcp)execute_135, (funcp)execute_137, (funcp)execute_139, (funcp)execute_151, (funcp)execute_153, (funcp)execute_155, (funcp)execute_157, (funcp)execute_162, (funcp)execute_165, (funcp)execute_169, (funcp)execute_171, (funcp)execute_173, (funcp)execute_175, (funcp)execute_360, (funcp)execute_361, (funcp)execute_190, (funcp)execute_194, (funcp)execute_192, (funcp)execute_196, (funcp)execute_201, (funcp)execute_203, (funcp)execute_207, (funcp)execute_210, (funcp)execute_213, (funcp)execute_215, (funcp)execute_216, (funcp)execute_217, (funcp)execute_222, (funcp)execute_225, (funcp)execute_227, (funcp)execute_231, (funcp)execute_233, (funcp)execute_239, (funcp)execute_272, (funcp)execute_273, (funcp)execute_274, (funcp)execute_275, (funcp)execute_265, (funcp)execute_245, (funcp)execute_249, (funcp)execute_252, (funcp)execute_255, (funcp)execute_258, (funcp)execute_264, (funcp)execute_260, (funcp)execute_261, (funcp)execute_262, (funcp)execute_280, (funcp)execute_282, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 61;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_program_counter_behav/xsim.reloc",  (void **)funcTab, 61);
	iki_vhdl_file_variable_register(dp + 31232);
	iki_vhdl_file_variable_register(dp + 31288);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_program_counter_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_program_counter_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_program_counter_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_program_counter_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_program_counter_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
