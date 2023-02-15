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
static const char *ng0 = "C:/Users/1/Desktop/P1/gray/gray.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {4U, 0U};



static void Initial_40_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(40, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1472);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_45_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2624);
    *((int *)t2) = 1;
    t3 = (t0 + 2168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);

LAB14:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(54, ng0);

LAB23:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB24:    t5 = ((char*)((ng1)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t28 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng4)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng5)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng6)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng7)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng8)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng9)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng10)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t28 == 1)
        goto LAB39;

LAB40:
LAB41:
LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);

LAB13:    goto LAB12;

LAB17:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(49, ng0);

LAB22:    xsi_set_current_line(50, ng0);
    t21 = ((char*)((ng1)));
    t22 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 3, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB25:    xsi_set_current_line(56, ng0);

LAB42:    xsi_set_current_line(57, ng0);
    t7 = ((char*)((ng4)));
    t8 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 3, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(60, ng0);

LAB43:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(64, ng0);

LAB44:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(68, ng0);

LAB45:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(72, ng0);

LAB46:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(76, ng0);

LAB47:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(80, ng0);

LAB48:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB39:    xsi_set_current_line(84, ng0);

LAB49:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

}

static void Cont_93_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2284U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2684);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 7U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 2);
    t18 = (t0 + 2632);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_94_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2428U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2720);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 2640);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000973893232_0735672237_init()
{
	static char *pe[] = {(void *)Initial_40_0,(void *)Always_45_1,(void *)Cont_93_2,(void *)Cont_94_3};
	xsi_register_didat("work_m_00000000000973893232_0735672237", "isim/tb_isim_beh.exe.sim/work/m_00000000000973893232_0735672237.didat");
	xsi_register_executes(pe);
}
