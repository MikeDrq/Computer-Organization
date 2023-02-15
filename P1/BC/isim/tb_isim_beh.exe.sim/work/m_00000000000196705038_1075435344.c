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
static const char *ng0 = "C:/Users/1/Desktop/P1/BC/BlockChecker.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {32, 0};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {98, 0};
static unsigned int ng7[] = {3U, 0U};
static int ng8[] = {101, 0};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {1U, 0U};
static unsigned int ng11[] = {4U, 0U};
static int ng12[] = {103, 0};
static unsigned int ng13[] = {5U, 0U};
static int ng14[] = {105, 0};
static unsigned int ng15[] = {6U, 0U};
static int ng16[] = {110, 0};
static unsigned int ng17[] = {7U, 0U};
static unsigned int ng18[] = {9U, 0U};
static int ng19[] = {100, 0};
static unsigned int ng20[] = {10U, 0U};
static unsigned int ng21[] = {11U, 0U};



static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(41, ng0);

LAB2:    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);

LAB1:    return;
}

static void Always_45_1(char *t0)
{
    char t6[8];
    char t34[8];
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
    char *t31;
    char *t32;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2204);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
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

LAB11:    xsi_set_current_line(50, ng0);

LAB14:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB15:    t5 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng18)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng20)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng21)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB38;

LAB39:
LAB40:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);

LAB13:    xsi_set_current_line(47, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(52, ng0);

LAB41:    xsi_set_current_line(53, ng0);
    t7 = (t0 + 784U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t21 = (t8 + 4);
    t22 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB45;

LAB42:    if (t18 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t6) = 1;

LAB45:    t29 = (t6 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB53;

LAB50:    if (t18 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t6) = 1;

LAB53:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB61;

LAB58:    if (t18 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t6) = 1;

LAB61:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(62, ng0);

LAB66:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB64:
LAB56:
LAB48:    goto LAB40;

LAB18:    xsi_set_current_line(66, ng0);

LAB67:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB71;

LAB68:    if (t18 != 0)
        goto LAB70;

LAB69:    *((unsigned int *)t6) = 1;

LAB71:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB72;

LAB73:    xsi_set_current_line(70, ng0);

LAB76:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB74:    goto LAB40;

LAB20:    xsi_set_current_line(74, ng0);

LAB77:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB81;

LAB78:    if (t18 != 0)
        goto LAB80;

LAB79:    *((unsigned int *)t6) = 1;

LAB81:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB82;

LAB83:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB89;

LAB86:    if (t18 != 0)
        goto LAB88;

LAB87:    *((unsigned int *)t6) = 1;

LAB89:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB90;

LAB91:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB97;

LAB94:    if (t18 != 0)
        goto LAB96;

LAB95:    *((unsigned int *)t6) = 1;

LAB97:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB98;

LAB99:    xsi_set_current_line(84, ng0);

LAB102:    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB100:
LAB92:
LAB84:    goto LAB40;

LAB22:    xsi_set_current_line(88, ng0);

LAB103:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB107;

LAB104:    if (t18 != 0)
        goto LAB106;

LAB105:    *((unsigned int *)t6) = 1;

LAB107:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB108;

LAB109:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB115;

LAB112:    if (t18 != 0)
        goto LAB114;

LAB113:    *((unsigned int *)t6) = 1;

LAB115:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB116;

LAB117:    xsi_set_current_line(95, ng0);

LAB120:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB118:
LAB110:    goto LAB40;

LAB24:    xsi_set_current_line(99, ng0);

LAB121:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng12)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB125;

LAB122:    if (t18 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t6) = 1;

LAB125:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB133;

LAB130:    if (t18 != 0)
        goto LAB132;

LAB131:    *((unsigned int *)t6) = 1;

LAB133:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB134;

LAB135:    xsi_set_current_line(106, ng0);

LAB138:    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB136:
LAB128:    goto LAB40;

LAB26:    xsi_set_current_line(110, ng0);

LAB139:    xsi_set_current_line(111, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng14)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB143;

LAB140:    if (t18 != 0)
        goto LAB142;

LAB141:    *((unsigned int *)t6) = 1;

LAB143:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB144;

LAB145:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB151;

LAB148:    if (t18 != 0)
        goto LAB150;

LAB149:    *((unsigned int *)t6) = 1;

LAB151:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB152;

LAB153:    xsi_set_current_line(117, ng0);

LAB156:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB154:
LAB146:    goto LAB40;

LAB28:    xsi_set_current_line(121, ng0);

LAB157:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng16)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB161;

LAB158:    if (t18 != 0)
        goto LAB160;

LAB159:    *((unsigned int *)t6) = 1;

LAB161:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB162;

LAB163:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB169;

LAB166:    if (t18 != 0)
        goto LAB168;

LAB167:    *((unsigned int *)t6) = 1;

LAB169:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB170;

LAB171:    xsi_set_current_line(129, ng0);

LAB174:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB172:
LAB164:    goto LAB40;

LAB30:    xsi_set_current_line(133, ng0);

LAB175:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB179;

LAB176:    if (t18 != 0)
        goto LAB178;

LAB177:    *((unsigned int *)t6) = 1;

LAB179:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB180;

LAB181:    xsi_set_current_line(137, ng0);

LAB184:    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 32, t7, 32);
    t8 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);

LAB182:    goto LAB40;

LAB32:    xsi_set_current_line(142, ng0);

LAB185:    xsi_set_current_line(143, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng16)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB189;

LAB186:    if (t18 != 0)
        goto LAB188;

LAB187:    *((unsigned int *)t6) = 1;

LAB189:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB190;

LAB191:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB197;

LAB194:    if (t18 != 0)
        goto LAB196;

LAB195:    *((unsigned int *)t6) = 1;

LAB197:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB198;

LAB199:    xsi_set_current_line(149, ng0);

LAB202:    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB200:
LAB192:    goto LAB40;

LAB34:    xsi_set_current_line(153, ng0);

LAB203:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng19)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB207;

LAB204:    if (t18 != 0)
        goto LAB206;

LAB205:    *((unsigned int *)t6) = 1;

LAB207:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB208;

LAB209:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB215;

LAB212:    if (t18 != 0)
        goto LAB214;

LAB213:    *((unsigned int *)t6) = 1;

LAB215:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB216;

LAB217:    xsi_set_current_line(161, ng0);

LAB220:    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB218:
LAB210:    goto LAB40;

LAB36:    xsi_set_current_line(165, ng0);

LAB221:    xsi_set_current_line(166, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB225;

LAB222:    if (t18 != 0)
        goto LAB224;

LAB223:    *((unsigned int *)t6) = 1;

LAB225:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB226;

LAB227:    xsi_set_current_line(174, ng0);

LAB235:    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 32, t7, 32);
    t8 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);

LAB228:    goto LAB40;

LAB38:    xsi_set_current_line(179, ng0);

LAB236:    xsi_set_current_line(180, ng0);
    t3 = ((char*)((ng21)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB40;

LAB44:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(53, ng0);

LAB49:    xsi_set_current_line(54, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 4, 0LL);
    goto LAB48;

LAB52:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(56, ng0);

LAB57:    xsi_set_current_line(57, ng0);
    t22 = ((char*)((ng7)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB56;

LAB60:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(59, ng0);

LAB65:    xsi_set_current_line(60, ng0);
    t22 = ((char*)((ng9)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB64;

LAB70:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB71;

LAB72:    xsi_set_current_line(67, ng0);

LAB75:    xsi_set_current_line(68, ng0);
    t28 = ((char*)((ng5)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB74;

LAB80:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB81;

LAB82:    xsi_set_current_line(75, ng0);

LAB85:    xsi_set_current_line(76, ng0);
    t28 = ((char*)((ng7)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB84;

LAB88:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB89;

LAB90:    xsi_set_current_line(78, ng0);

LAB93:    xsi_set_current_line(79, ng0);
    t22 = ((char*)((ng9)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB92;

LAB96:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB97;

LAB98:    xsi_set_current_line(81, ng0);

LAB101:    xsi_set_current_line(82, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB100;

LAB106:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB107;

LAB108:    xsi_set_current_line(89, ng0);

LAB111:    xsi_set_current_line(90, ng0);
    t28 = ((char*)((ng11)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB110;

LAB114:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB115;

LAB116:    xsi_set_current_line(92, ng0);

LAB119:    xsi_set_current_line(93, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB118;

LAB124:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(100, ng0);

LAB129:    xsi_set_current_line(101, ng0);
    t28 = ((char*)((ng13)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB128;

LAB132:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB133;

LAB134:    xsi_set_current_line(103, ng0);

LAB137:    xsi_set_current_line(104, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB136;

LAB142:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB143;

LAB144:    xsi_set_current_line(111, ng0);

LAB147:    xsi_set_current_line(112, ng0);
    t28 = ((char*)((ng15)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB146;

LAB150:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB151;

LAB152:    xsi_set_current_line(114, ng0);

LAB155:    xsi_set_current_line(115, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB154;

LAB160:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB161;

LAB162:    xsi_set_current_line(122, ng0);

LAB165:    xsi_set_current_line(123, ng0);
    t28 = ((char*)((ng17)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 32, t7, 32);
    t8 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);
    goto LAB164;

LAB168:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB169;

LAB170:    xsi_set_current_line(126, ng0);

LAB173:    xsi_set_current_line(127, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB172;

LAB178:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB179;

LAB180:    xsi_set_current_line(134, ng0);

LAB183:    xsi_set_current_line(135, ng0);
    t28 = ((char*)((ng5)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB182;

LAB188:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB189;

LAB190:    xsi_set_current_line(143, ng0);

LAB193:    xsi_set_current_line(144, ng0);
    t28 = ((char*)((ng18)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB192;

LAB196:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB197;

LAB198:    xsi_set_current_line(146, ng0);

LAB201:    xsi_set_current_line(147, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB200;

LAB206:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB207;

LAB208:    xsi_set_current_line(154, ng0);

LAB211:    xsi_set_current_line(155, ng0);
    t28 = ((char*)((ng20)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 32, t7, 32);
    t8 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);
    goto LAB210;

LAB214:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB215;

LAB216:    xsi_set_current_line(158, ng0);

LAB219:    xsi_set_current_line(159, ng0);
    t22 = ((char*)((ng5)));
    t28 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 4, 0LL);
    goto LAB218;

LAB224:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB225;

LAB226:    xsi_set_current_line(166, ng0);

LAB229:    xsi_set_current_line(167, ng0);
    t28 = (t0 + 1104);
    t29 = (t28 + 36U);
    t31 = *((char **)t29);
    t32 = ((char*)((ng1)));
    memset(t34, 0, 8);
    xsi_vlog_signed_less(t34, 32, t31, 32, t32, 32);
    t35 = (t34 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t34);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB230;

LAB231:    xsi_set_current_line(170, ng0);

LAB234:    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB232:    goto LAB228;

LAB230:    xsi_set_current_line(167, ng0);

LAB233:    xsi_set_current_line(168, ng0);
    t41 = ((char*)((ng21)));
    t42 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t42, t41, 0, 0, 4, 0LL);
    goto LAB232;

}

static void Cont_185_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(185, ng0);
    t2 = (t0 + 1104);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 2256);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 2212);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng3)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng1)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000000196705038_1075435344_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Always_45_1,(void *)Cont_185_2};
	xsi_register_didat("work_m_00000000000196705038_1075435344", "isim/tb_isim_beh.exe.sim/work/m_00000000000196705038_1075435344.didat");
	xsi_register_executes(pe);
}
