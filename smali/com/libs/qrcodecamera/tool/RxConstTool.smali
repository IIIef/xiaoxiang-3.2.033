.class public Lcom/libs/qrcodecamera/tool/RxConstTool;
.super Ljava/lang/Object;
.source "RxConstTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;,
        Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;
    }
.end annotation


# static fields
.field public static final BYTE:I = 0x1

.field public static final DAY:I = 0x5265c00

.field public static final GB:I = 0x40000000

.field public static final HOUR:I = 0x36ee80

.field public static final KB:I = 0x400

.field public static final MB:I = 0x100000

.field public static final MIN:I = 0xea60

.field public static final MSEC:I = 0x1

.field public static final REGEX_CHZ:Ljava/lang/String; = "^[\\u4e00-\\u9fa5]+$"

.field public static final REGEX_DATE:Ljava/lang/String; = "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

.field public static final REGEX_EMAIL:Ljava/lang/String; = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

.field public static final REGEX_IDCARD:Ljava/lang/String; = "(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$|^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|x|X)$)"

.field public static final REGEX_IDCARD15:Ljava/lang/String; = "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

.field public static final REGEX_IDCARD18:Ljava/lang/String; = "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

.field public static final REGEX_IP:Ljava/lang/String; = "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

.field public static final REGEX_MOBILE_EXACT:Ljava/lang/String; = "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|(147))\\d{8}$"

.field public static final REGEX_MOBILE_SIMPLE:Ljava/lang/String; = "^[1]\\d{10}$"

.field public static final REGEX_TEL:Ljava/lang/String; = "^0\\d{2,3}[- ]?\\d{7,8}"

.field public static final REGEX_URL:Ljava/lang/String; = "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?"

.field public static final REGEX_USERNAME:Ljava/lang/String; = "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

.field public static final SEC:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
