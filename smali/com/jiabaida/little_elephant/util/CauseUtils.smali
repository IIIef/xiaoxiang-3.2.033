.class public Lcom/jiabaida/little_elephant/util/CauseUtils;
.super Ljava/lang/Object;
.source "CauseUtils.java"


# static fields
.field private static final ACCOUNT_NOT_REGISTERED:I = 0x7df

.field private static final CODE_ERROR:I = 0x7dc

.field private static final DEVICE_NOT_EXIST:I = 0x7d7

.field private static final EMAIL_ERROR:I = 0x7d1

.field private static final INVALID_USER_NAME_FORMAT:I = 0x7e1

.field private static final MISSING_PARAMETER:I = 0x7d2

.field private static final MISSING_PARAMETER_2:I = 0x7d8

.field private static final MISSING_PARAMETER_3:I = 0x7d9

.field private static final MOBILE_NUMBER_ERROR:I = 0x7d3

.field private static final NOT_MAC_ADDRESS:I = 0x7d5

.field private static final NOT_NULL_MAC:I = 0x7d6

.field private static final NOT_TOKEN:I = 0x3e8

.field private static final NULLITY_TOKEN:I = 0x3ea

.field private static final PARAMETER_SETTING_ENABLED:I = 0x7e3

.field private static final PASSWORD_ERROR:I = 0x7de

.field private static final PSW_ERROR:I = 0x7d4

.field private static final REQUESTED:I = 0x7e2

.field private static final SMS_SENDING_FAILED:I = 0x3d0900

.field private static final TOKEN_INVISIBLE:I = 0x3e9

.field private static final USER_ALREADY_EXISTS:I = 0x7dd

.field private static final USER_DISABLED:I = 0x7e0

.field private static final VERIFICATION_CODE:I = 0x7da

.field private static final VERIFICATION_CODE_2:I = 0x7db


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCauseStr(I)Ljava/lang/String;
    .locals 1

    const v0, 0x3d0900

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, ""

    return-object p0

    .line 103
    :pswitch_0
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :pswitch_1
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :pswitch_3
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d01a2

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_4
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_5
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_6
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_7
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_8
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d01b4

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :pswitch_9
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d01b3

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :pswitch_a
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :pswitch_b
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :pswitch_c
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_d
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :pswitch_e
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :pswitch_f
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :pswitch_10
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :pswitch_11
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_12
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_13
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_14
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_15
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p0

    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
