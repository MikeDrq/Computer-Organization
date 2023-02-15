/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/1/Desktop/P1/AluNew/tb.v";
static unsigned int ng1[] = {4042322160U, 0U};
static int ng2[] = {8, 0};
static unsigned int ng3[] = {5U, 0U};



static void Initial_43_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(43, ng0);

LAB2:    xsi_set_current_line(45, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 828);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 920);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);

LAB1:    return;
}


extern void work_m_00000000000852624208_3671711236_init()
{
	static char *pe[] = {(void *)Initial_43_0};
	xsi_register_didat("work_m_00000000000852624208_3671711236", "isim/tb_isim_beh.exe.sim/work/m_00000000000852624208_3671711236.didat");
	xsi_register_executes(pe);
}
