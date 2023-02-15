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
static const char *ng0 = "C:/Users/1/Desktop/CO/P1/NEW/VoterPlus/VoterPlus.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {32, 0};
static int ng4[] = {8, 0};
static int ng5[] = {4, 0};
static int ng6[] = {16, 0};



static void Initial_34_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(34, ng0);

LAB2:    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);
    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1380);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1472);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1564);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_40_1(char *t0)
{
    char t6[8];
    char t35[8];
    char t41[8];
    char t52[8];
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
    char *t28;
    char *t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2664);
    *((int *)t2) = 1;
    t3 = (t0 + 2352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 692U);
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

LAB11:    xsi_set_current_line(47, ng0);

LAB14:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 784U);
    t7 = *((char **)t5);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t5 = (t4 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB15;

LAB16:
LAB17:    t29 = (t0 + 1288);
    xsi_vlogvar_assign_value(t29, t6, 0, 0, 8);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 600U);
    t7 = *((char **)t5);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t5 = (t4 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB18;

LAB19:
LAB20:    t29 = (t0 + 1472);
    xsi_vlogvar_assign_value(t29, t6, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 876U);
    t7 = *((char **)t5);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t5 = (t4 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB21;

LAB22:
LAB23:    t29 = (t0 + 1380);
    xsi_vlogvar_assign_value(t29, t6, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB24:    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(57, ng0);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB36:    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB51;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t6) = 1;

LAB51:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB52;

LAB53:
LAB54:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1564);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB12;

LAB15:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t4 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t4);
    t30 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t31 = (t26 & t25);
    t27 = (~(t30));
    t32 = (~(t31));
    t33 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t33 & t27);
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t32);
    goto LAB17;

LAB18:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t4 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t4);
    t30 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t31 = (t26 & t25);
    t27 = (~(t30));
    t32 = (~(t31));
    t33 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t33 & t27);
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t32);
    goto LAB20;

LAB21:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t4 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t4);
    t30 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t31 = (t26 & t25);
    t27 = (~(t30));
    t32 = (~(t31));
    t33 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t33 & t27);
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t32);
    goto LAB23;

LAB25:    xsi_set_current_line(52, ng0);

LAB27:    xsi_set_current_line(53, ng0);
    t8 = (t0 + 1472);
    t21 = (t8 + 36U);
    t22 = *((char **)t21);
    t28 = (t0 + 1472);
    t29 = (t28 + 44U);
    t36 = *((char **)t29);
    t37 = (t0 + 1656);
    t38 = (t37 + 36U);
    t39 = *((char **)t38);
    xsi_vlog_generic_get_index_select_value(t35, 32, t22, t36, 2, t39, 32, 1);
    t40 = ((char*)((ng2)));
    memset(t41, 0, 8);
    t42 = (t35 + 4);
    t43 = (t40 + 4);
    t14 = *((unsigned int *)t35);
    t15 = *((unsigned int *)t40);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t42);
    t18 = *((unsigned int *)t43);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t23 = *((unsigned int *)t42);
    t24 = *((unsigned int *)t43);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t20 & t26);
    if (t27 != 0)
        goto LAB31;

LAB28:    if (t25 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t41) = 1;

LAB31:    t45 = (t41 + 4);
    t32 = *((unsigned int *)t45);
    t33 = (~(t32));
    t34 = *((unsigned int *)t41);
    t46 = (t34 & t33);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB32;

LAB33:
LAB34:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1656);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB24;

LAB30:    t44 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB31;

LAB32:    xsi_set_current_line(53, ng0);

LAB35:    xsi_set_current_line(54, ng0);
    t48 = (t0 + 1564);
    t49 = (t48 + 36U);
    t50 = *((char **)t49);
    t51 = ((char*)((ng2)));
    memset(t52, 0, 8);
    xsi_vlog_unsigned_add(t52, 32, t50, 32, t51, 32);
    t53 = (t0 + 1564);
    xsi_vlogvar_assign_value(t53, t52, 0, 0, 32);
    goto LAB34;

LAB37:    xsi_set_current_line(57, ng0);

LAB39:    xsi_set_current_line(58, ng0);
    t8 = (t0 + 1288);
    t21 = (t8 + 36U);
    t22 = *((char **)t21);
    t28 = (t0 + 1288);
    t29 = (t28 + 44U);
    t36 = *((char **)t29);
    t37 = (t0 + 1656);
    t38 = (t37 + 36U);
    t39 = *((char **)t38);
    xsi_vlog_generic_get_index_select_value(t35, 32, t22, t36, 2, t39, 32, 1);
    t40 = ((char*)((ng2)));
    memset(t41, 0, 8);
    t42 = (t35 + 4);
    t43 = (t40 + 4);
    t14 = *((unsigned int *)t35);
    t15 = *((unsigned int *)t40);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t42);
    t18 = *((unsigned int *)t43);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t23 = *((unsigned int *)t42);
    t24 = *((unsigned int *)t43);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t20 & t26);
    if (t27 != 0)
        goto LAB43;

LAB40:    if (t25 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t41) = 1;

LAB43:    t45 = (t41 + 4);
    t32 = *((unsigned int *)t45);
    t33 = (~(t32));
    t34 = *((unsigned int *)t41);
    t46 = (t34 & t33);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB44;

LAB45:
LAB46:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1656);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB36;

LAB42:    t44 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(58, ng0);

LAB47:    xsi_set_current_line(59, ng0);
    t48 = (t0 + 1564);
    t49 = (t48 + 36U);
    t50 = *((char **)t49);
    t51 = ((char*)((ng5)));
    memset(t52, 0, 8);
    xsi_vlog_unsigned_add(t52, 32, t50, 32, t51, 32);
    t53 = (t0 + 1564);
    xsi_vlogvar_assign_value(t53, t52, 0, 0, 32);
    goto LAB46;

LAB50:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(62, ng0);

LAB55:    xsi_set_current_line(63, ng0);
    t28 = (t0 + 1564);
    t29 = (t28 + 36U);
    t36 = *((char **)t29);
    t37 = ((char*)((ng6)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_add(t35, 32, t36, 32, t37, 32);
    t38 = (t0 + 1564);
    xsi_vlogvar_assign_value(t38, t35, 0, 0, 32);
    goto LAB54;

}

static void Cont_67_2(char *t0)
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

LAB0:    t1 = (t0 + 2468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2716);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
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
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 2672);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002743915897_1990751517_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Always_40_1,(void *)Cont_67_2};
	xsi_register_didat("work_m_00000000002743915897_1990751517", "isim/tb_isim_beh.exe.sim/work/m_00000000002743915897_1990751517.didat");
	xsi_register_executes(pe);
}
