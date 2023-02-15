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
static const char *ng0 = "C:/Users/1/Desktop/P1/string/string.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {48, 0};
static int ng5[] = {57, 0};
static unsigned int ng6[] = {1U, 0U};
static int ng7[] = {43, 0};
static int ng8[] = {42, 0};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {2U, 0U};



static void Initial_33_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);

LAB1:    return;
}

static void Always_37_1(char *t0)
{
    char t6[8];
    char t31[8];
    char t36[8];
    char t40[8];
    char t43[8];
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
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2204);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
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

LAB11:    xsi_set_current_line(42, ng0);

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB15:    t5 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t30 == 1)
        goto LAB22;

LAB23:
LAB24:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 2, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(44, ng0);

LAB25:    xsi_set_current_line(45, ng0);
    t7 = (t0 + 784U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t21 = (t8 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB27;

LAB26:    t22 = (t7 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB27;

LAB30:    if (*((unsigned int *)t8) < *((unsigned int *)t7))
        goto LAB29;

LAB28:    *((unsigned int *)t6) = 1;

LAB29:    memset(t31, 0, 8);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t29) != 0)
        goto LAB33;

LAB34:    t33 = (t31 + 4);
    t14 = *((unsigned int *)t31);
    t15 = *((unsigned int *)t33);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB35;

LAB36:    memcpy(t43, t31, 8);

LAB37:    t71 = (t43 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t43);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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
        goto LAB57;

LAB54:    if (t18 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t6) = 1;

LAB57:    memset(t31, 0, 8);
    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t21) != 0)
        goto LAB60;

LAB61:    t28 = (t31 + 4);
    t47 = *((unsigned int *)t31);
    t48 = (!(t47));
    t49 = *((unsigned int *)t28);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB62;

LAB63:    memcpy(t43, t31, 8);

LAB64:    t46 = (t43 + 4);
    t95 = *((unsigned int *)t46);
    t96 = (~(t95));
    t97 = *((unsigned int *)t43);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(53, ng0);

LAB80:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB78:
LAB52:    goto LAB24;

LAB18:    xsi_set_current_line(58, ng0);

LAB81:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB83;

LAB82:    t7 = (t2 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB83;

LAB86:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB85;

LAB84:    *((unsigned int *)t6) = 1;

LAB85:    memset(t31, 0, 8);
    t21 = (t6 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t21) != 0)
        goto LAB89;

LAB90:    t28 = (t31 + 4);
    t14 = *((unsigned int *)t31);
    t15 = *((unsigned int *)t28);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB91;

LAB92:    memcpy(t43, t31, 8);

LAB93:    t46 = (t43 + 4);
    t72 = *((unsigned int *)t46);
    t73 = (~(t72));
    t74 = *((unsigned int *)t43);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB106;

LAB107:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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
        goto LAB113;

LAB110:    if (t18 != 0)
        goto LAB112;

LAB111:    *((unsigned int *)t6) = 1;

LAB113:    memset(t31, 0, 8);
    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t21) != 0)
        goto LAB116;

LAB117:    t28 = (t31 + 4);
    t47 = *((unsigned int *)t31);
    t48 = (!(t47));
    t49 = *((unsigned int *)t28);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB118;

LAB119:    memcpy(t43, t31, 8);

LAB120:    t46 = (t43 + 4);
    t95 = *((unsigned int *)t46);
    t96 = (~(t95));
    t97 = *((unsigned int *)t43);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB132;

LAB133:    xsi_set_current_line(66, ng0);

LAB136:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB134:
LAB108:    goto LAB24;

LAB20:    xsi_set_current_line(70, ng0);

LAB137:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 784U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB139;

LAB138:    t8 = (t3 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB139;

LAB142:    if (*((unsigned int *)t5) < *((unsigned int *)t3))
        goto LAB141;

LAB140:    *((unsigned int *)t6) = 1;

LAB141:    memset(t31, 0, 8);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB143;

LAB144:    if (*((unsigned int *)t22) != 0)
        goto LAB145;

LAB146:    t29 = (t31 + 4);
    t14 = *((unsigned int *)t31);
    t15 = *((unsigned int *)t29);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB147;

LAB148:    memcpy(t43, t31, 8);

LAB149:    t53 = (t43 + 4);
    t72 = *((unsigned int *)t53);
    t73 = (~(t72));
    t74 = *((unsigned int *)t43);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB162;

LAB163:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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

LAB169:    memset(t31, 0, 8);
    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB170;

LAB171:    if (*((unsigned int *)t21) != 0)
        goto LAB172;

LAB173:    t28 = (t31 + 4);
    t47 = *((unsigned int *)t31);
    t48 = (!(t47));
    t49 = *((unsigned int *)t28);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB174;

LAB175:    memcpy(t43, t31, 8);

LAB176:    t46 = (t43 + 4);
    t95 = *((unsigned int *)t46);
    t96 = (~(t95));
    t97 = *((unsigned int *)t43);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB188;

LAB189:    xsi_set_current_line(79, ng0);

LAB192:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB190:
LAB164:    goto LAB24;

LAB22:    xsi_set_current_line(84, ng0);

LAB193:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB24;

LAB27:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB29;

LAB31:    *((unsigned int *)t31) = 1;
    goto LAB34;

LAB33:    t32 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB34;

LAB35:    t34 = (t0 + 784U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    if (*((unsigned int *)t37) != 0)
        goto LAB39;

LAB38:    t38 = (t34 + 4);
    if (*((unsigned int *)t38) != 0)
        goto LAB39;

LAB42:    if (*((unsigned int *)t35) > *((unsigned int *)t34))
        goto LAB41;

LAB40:    *((unsigned int *)t36) = 1;

LAB41:    memset(t40, 0, 8);
    t41 = (t36 + 4);
    t17 = *((unsigned int *)t41);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t41) != 0)
        goto LAB45;

LAB46:    t24 = *((unsigned int *)t31);
    t25 = *((unsigned int *)t40);
    t26 = (t24 & t25);
    *((unsigned int *)t43) = t26;
    t44 = (t31 + 4);
    t45 = (t40 + 4);
    t46 = (t43 + 4);
    t27 = *((unsigned int *)t44);
    t47 = *((unsigned int *)t45);
    t48 = (t27 | t47);
    *((unsigned int *)t46) = t48;
    t49 = *((unsigned int *)t46);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB37;

LAB39:    t39 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB41;

LAB43:    *((unsigned int *)t40) = 1;
    goto LAB46;

LAB45:    t42 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB46;

LAB47:    t51 = *((unsigned int *)t43);
    t52 = *((unsigned int *)t46);
    *((unsigned int *)t43) = (t51 | t52);
    t53 = (t31 + 4);
    t54 = (t40 + 4);
    t55 = *((unsigned int *)t31);
    t56 = (~(t55));
    t57 = *((unsigned int *)t53);
    t58 = (~(t57));
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t54);
    t62 = (~(t61));
    t63 = (t56 & t58);
    t64 = (t60 & t62);
    t65 = (~(t63));
    t66 = (~(t64));
    t67 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t67 & t65);
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & t66);
    t69 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t69 & t65);
    t70 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t70 & t66);
    goto LAB49;

LAB50:    xsi_set_current_line(45, ng0);

LAB53:    xsi_set_current_line(46, ng0);
    t77 = ((char*)((ng6)));
    t78 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t78, t77, 0, 0, 2, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB52;

LAB56:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB57;

LAB58:    *((unsigned int *)t31) = 1;
    goto LAB61;

LAB60:    t22 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB61;

LAB62:    t29 = (t0 + 784U);
    t32 = *((char **)t29);
    t29 = ((char*)((ng8)));
    memset(t36, 0, 8);
    t33 = (t32 + 4);
    t34 = (t29 + 4);
    t51 = *((unsigned int *)t32);
    t52 = *((unsigned int *)t29);
    t55 = (t51 ^ t52);
    t56 = *((unsigned int *)t33);
    t57 = *((unsigned int *)t34);
    t58 = (t56 ^ t57);
    t59 = (t55 | t58);
    t60 = *((unsigned int *)t33);
    t61 = *((unsigned int *)t34);
    t62 = (t60 | t61);
    t65 = (~(t62));
    t66 = (t59 & t65);
    if (t66 != 0)
        goto LAB68;

LAB65:    if (t62 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t36) = 1;

LAB68:    memset(t40, 0, 8);
    t37 = (t36 + 4);
    t67 = *((unsigned int *)t37);
    t68 = (~(t67));
    t69 = *((unsigned int *)t36);
    t70 = (t69 & t68);
    t72 = (t70 & 1U);
    if (t72 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t37) != 0)
        goto LAB71;

LAB72:    t73 = *((unsigned int *)t31);
    t74 = *((unsigned int *)t40);
    t75 = (t73 | t74);
    *((unsigned int *)t43) = t75;
    t39 = (t31 + 4);
    t41 = (t40 + 4);
    t42 = (t43 + 4);
    t76 = *((unsigned int *)t39);
    t79 = *((unsigned int *)t41);
    t80 = (t76 | t79);
    *((unsigned int *)t42) = t80;
    t81 = *((unsigned int *)t42);
    t82 = (t81 != 0);
    if (t82 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB64;

LAB67:    t35 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB68;

LAB69:    *((unsigned int *)t40) = 1;
    goto LAB72;

LAB71:    t38 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB72;

LAB73:    t83 = *((unsigned int *)t43);
    t84 = *((unsigned int *)t42);
    *((unsigned int *)t43) = (t83 | t84);
    t44 = (t31 + 4);
    t45 = (t40 + 4);
    t85 = *((unsigned int *)t44);
    t86 = (~(t85));
    t87 = *((unsigned int *)t31);
    t30 = (t87 & t86);
    t88 = *((unsigned int *)t45);
    t89 = (~(t88));
    t90 = *((unsigned int *)t40);
    t63 = (t90 & t89);
    t91 = (~(t30));
    t92 = (~(t63));
    t93 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t93 & t91);
    t94 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t94 & t92);
    goto LAB75;

LAB76:    xsi_set_current_line(49, ng0);

LAB79:    xsi_set_current_line(50, ng0);
    t53 = ((char*)((ng9)));
    t54 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 2, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB78;

LAB83:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB85;

LAB87:    *((unsigned int *)t31) = 1;
    goto LAB90;

LAB89:    t22 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB90;

LAB91:    t29 = (t0 + 784U);
    t32 = *((char **)t29);
    t29 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t33 = (t32 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB95;

LAB94:    t34 = (t29 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB95;

LAB98:    if (*((unsigned int *)t32) > *((unsigned int *)t29))
        goto LAB97;

LAB96:    *((unsigned int *)t36) = 1;

LAB97:    memset(t40, 0, 8);
    t37 = (t36 + 4);
    t17 = *((unsigned int *)t37);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t37) != 0)
        goto LAB101;

LAB102:    t24 = *((unsigned int *)t31);
    t25 = *((unsigned int *)t40);
    t26 = (t24 & t25);
    *((unsigned int *)t43) = t26;
    t39 = (t31 + 4);
    t41 = (t40 + 4);
    t42 = (t43 + 4);
    t27 = *((unsigned int *)t39);
    t47 = *((unsigned int *)t41);
    t48 = (t27 | t47);
    *((unsigned int *)t42) = t48;
    t49 = *((unsigned int *)t42);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB103;

LAB104:
LAB105:    goto LAB93;

LAB95:    t35 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB97;

LAB99:    *((unsigned int *)t40) = 1;
    goto LAB102;

LAB101:    t38 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB102;

LAB103:    t51 = *((unsigned int *)t43);
    t52 = *((unsigned int *)t42);
    *((unsigned int *)t43) = (t51 | t52);
    t44 = (t31 + 4);
    t45 = (t40 + 4);
    t55 = *((unsigned int *)t31);
    t56 = (~(t55));
    t57 = *((unsigned int *)t44);
    t58 = (~(t57));
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t45);
    t62 = (~(t61));
    t30 = (t56 & t58);
    t63 = (t60 & t62);
    t65 = (~(t30));
    t66 = (~(t63));
    t67 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t67 & t65);
    t68 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t68 & t66);
    t69 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t69 & t65);
    t70 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t70 & t66);
    goto LAB105;

LAB106:    xsi_set_current_line(60, ng0);

LAB109:    xsi_set_current_line(61, ng0);
    t53 = ((char*)((ng9)));
    t54 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 2, 0LL);
    goto LAB108;

LAB112:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB113;

LAB114:    *((unsigned int *)t31) = 1;
    goto LAB117;

LAB116:    t22 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB117;

LAB118:    t29 = (t0 + 784U);
    t32 = *((char **)t29);
    t29 = ((char*)((ng8)));
    memset(t36, 0, 8);
    t33 = (t32 + 4);
    t34 = (t29 + 4);
    t51 = *((unsigned int *)t32);
    t52 = *((unsigned int *)t29);
    t55 = (t51 ^ t52);
    t56 = *((unsigned int *)t33);
    t57 = *((unsigned int *)t34);
    t58 = (t56 ^ t57);
    t59 = (t55 | t58);
    t60 = *((unsigned int *)t33);
    t61 = *((unsigned int *)t34);
    t62 = (t60 | t61);
    t65 = (~(t62));
    t66 = (t59 & t65);
    if (t66 != 0)
        goto LAB124;

LAB121:    if (t62 != 0)
        goto LAB123;

LAB122:    *((unsigned int *)t36) = 1;

LAB124:    memset(t40, 0, 8);
    t37 = (t36 + 4);
    t67 = *((unsigned int *)t37);
    t68 = (~(t67));
    t69 = *((unsigned int *)t36);
    t70 = (t69 & t68);
    t72 = (t70 & 1U);
    if (t72 != 0)
        goto LAB125;

LAB126:    if (*((unsigned int *)t37) != 0)
        goto LAB127;

LAB128:    t73 = *((unsigned int *)t31);
    t74 = *((unsigned int *)t40);
    t75 = (t73 | t74);
    *((unsigned int *)t43) = t75;
    t39 = (t31 + 4);
    t41 = (t40 + 4);
    t42 = (t43 + 4);
    t76 = *((unsigned int *)t39);
    t79 = *((unsigned int *)t41);
    t80 = (t76 | t79);
    *((unsigned int *)t42) = t80;
    t81 = *((unsigned int *)t42);
    t82 = (t81 != 0);
    if (t82 == 1)
        goto LAB129;

LAB130:
LAB131:    goto LAB120;

LAB123:    t35 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB124;

LAB125:    *((unsigned int *)t40) = 1;
    goto LAB128;

LAB127:    t38 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB128;

LAB129:    t83 = *((unsigned int *)t43);
    t84 = *((unsigned int *)t42);
    *((unsigned int *)t43) = (t83 | t84);
    t44 = (t31 + 4);
    t45 = (t40 + 4);
    t85 = *((unsigned int *)t44);
    t86 = (~(t85));
    t87 = *((unsigned int *)t31);
    t30 = (t87 & t86);
    t88 = *((unsigned int *)t45);
    t89 = (~(t88));
    t90 = *((unsigned int *)t40);
    t63 = (t90 & t89);
    t91 = (~(t30));
    t92 = (~(t63));
    t93 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t93 & t91);
    t94 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t94 & t92);
    goto LAB131;

LAB132:    xsi_set_current_line(63, ng0);

LAB135:    xsi_set_current_line(64, ng0);
    t53 = ((char*)((ng10)));
    t54 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 2, 0LL);
    goto LAB134;

LAB139:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB141;

LAB143:    *((unsigned int *)t31) = 1;
    goto LAB146;

LAB145:    t28 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB146;

LAB147:    t32 = (t0 + 784U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t34 = (t33 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB151;

LAB150:    t35 = (t32 + 4);
    if (*((unsigned int *)t35) != 0)
        goto LAB151;

LAB154:    if (*((unsigned int *)t33) > *((unsigned int *)t32))
        goto LAB153;

LAB152:    *((unsigned int *)t36) = 1;

LAB153:    memset(t40, 0, 8);
    t38 = (t36 + 4);
    t17 = *((unsigned int *)t38);
    t18 = (~(t17));
    t19 = *((unsigned int *)t36);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB155;

LAB156:    if (*((unsigned int *)t38) != 0)
        goto LAB157;

LAB158:    t24 = *((unsigned int *)t31);
    t25 = *((unsigned int *)t40);
    t26 = (t24 & t25);
    *((unsigned int *)t43) = t26;
    t41 = (t31 + 4);
    t42 = (t40 + 4);
    t44 = (t43 + 4);
    t27 = *((unsigned int *)t41);
    t47 = *((unsigned int *)t42);
    t48 = (t27 | t47);
    *((unsigned int *)t44) = t48;
    t49 = *((unsigned int *)t44);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB159;

LAB160:
LAB161:    goto LAB149;

LAB151:    t37 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB153;

LAB155:    *((unsigned int *)t40) = 1;
    goto LAB158;

LAB157:    t39 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB158;

LAB159:    t51 = *((unsigned int *)t43);
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t43) = (t51 | t52);
    t45 = (t31 + 4);
    t46 = (t40 + 4);
    t55 = *((unsigned int *)t31);
    t56 = (~(t55));
    t57 = *((unsigned int *)t45);
    t58 = (~(t57));
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t46);
    t62 = (~(t61));
    t63 = (t56 & t58);
    t64 = (t60 & t62);
    t65 = (~(t63));
    t66 = (~(t64));
    t67 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t67 & t65);
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t69 & t65);
    t70 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t70 & t66);
    goto LAB161;

LAB162:    xsi_set_current_line(71, ng0);

LAB165:    xsi_set_current_line(72, ng0);
    t54 = ((char*)((ng6)));
    t71 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t71, t54, 0, 0, 2, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB164;

LAB168:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB169;

LAB170:    *((unsigned int *)t31) = 1;
    goto LAB173;

LAB172:    t22 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB173;

LAB174:    t29 = (t0 + 784U);
    t32 = *((char **)t29);
    t29 = ((char*)((ng8)));
    memset(t36, 0, 8);
    t33 = (t32 + 4);
    t34 = (t29 + 4);
    t51 = *((unsigned int *)t32);
    t52 = *((unsigned int *)t29);
    t55 = (t51 ^ t52);
    t56 = *((unsigned int *)t33);
    t57 = *((unsigned int *)t34);
    t58 = (t56 ^ t57);
    t59 = (t55 | t58);
    t60 = *((unsigned int *)t33);
    t61 = *((unsigned int *)t34);
    t62 = (t60 | t61);
    t65 = (~(t62));
    t66 = (t59 & t65);
    if (t66 != 0)
        goto LAB180;

LAB177:    if (t62 != 0)
        goto LAB179;

LAB178:    *((unsigned int *)t36) = 1;

LAB180:    memset(t40, 0, 8);
    t37 = (t36 + 4);
    t67 = *((unsigned int *)t37);
    t68 = (~(t67));
    t69 = *((unsigned int *)t36);
    t70 = (t69 & t68);
    t72 = (t70 & 1U);
    if (t72 != 0)
        goto LAB181;

LAB182:    if (*((unsigned int *)t37) != 0)
        goto LAB183;

LAB184:    t73 = *((unsigned int *)t31);
    t74 = *((unsigned int *)t40);
    t75 = (t73 | t74);
    *((unsigned int *)t43) = t75;
    t39 = (t31 + 4);
    t41 = (t40 + 4);
    t42 = (t43 + 4);
    t76 = *((unsigned int *)t39);
    t79 = *((unsigned int *)t41);
    t80 = (t76 | t79);
    *((unsigned int *)t42) = t80;
    t81 = *((unsigned int *)t42);
    t82 = (t81 != 0);
    if (t82 == 1)
        goto LAB185;

LAB186:
LAB187:    goto LAB176;

LAB179:    t35 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB180;

LAB181:    *((unsigned int *)t40) = 1;
    goto LAB184;

LAB183:    t38 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB184;

LAB185:    t83 = *((unsigned int *)t43);
    t84 = *((unsigned int *)t42);
    *((unsigned int *)t43) = (t83 | t84);
    t44 = (t31 + 4);
    t45 = (t40 + 4);
    t85 = *((unsigned int *)t44);
    t86 = (~(t85));
    t87 = *((unsigned int *)t31);
    t30 = (t87 & t86);
    t88 = *((unsigned int *)t45);
    t89 = (~(t88));
    t90 = *((unsigned int *)t40);
    t63 = (t90 & t89);
    t91 = (~(t30));
    t92 = (~(t63));
    t93 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t93 & t91);
    t94 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t94 & t92);
    goto LAB187;

LAB188:    xsi_set_current_line(75, ng0);

LAB191:    xsi_set_current_line(76, ng0);
    t53 = ((char*)((ng9)));
    t54 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 2, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB190;

}

static void Cont_91_2(char *t0)
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

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2256);
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
    t18 = (t0 + 2212);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000793361607_4180013079_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Always_37_1,(void *)Cont_91_2};
	xsi_register_didat("work_m_00000000000793361607_4180013079", "isim/tb_isim_beh.exe.sim/work/m_00000000000793361607_4180013079.didat");
	xsi_register_executes(pe);
}
