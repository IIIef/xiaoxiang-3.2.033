.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z = true

.field public static CATCH_EXCEPTION:Z = true

.field public static COMPRESS_DATA:Z = true

.field public static ENABLE_MEMORY_BUFFER:Z = true

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:[D = null

.field public static kContinueSessionMillis:J = 0x7530L

.field public static mVerticalType:I = 0x0

.field public static mWrapperType:Ljava/lang/String; = null

.field public static mWrapperVersion:Ljava/lang/String; = null

.field public static sEncrypt:Z = false

.field public static sLatentWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEncrypt(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lu/aly/bt;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 69
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lu/aly/bt;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 77
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 94
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 2

    .line 81
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "5.6.7.0"

    return-object v0

    :cond_0
    const-string v0, "5.6.7"

    return-object v0
.end method

.method public static setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 32
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lu/aly/bt;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Appkey\u548cAndroidManifest.xml\u4e2d\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    .line 41
    invoke-static {p0}, Lu/aly/bv;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Appkey\u548c\u4e0a\u6b21\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    .line 47
    invoke-static {v0}, Lu/aly/bv;->d(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    .line 53
    :cond_3
    :goto_0
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public static setLatencyWindow(J)V
    .locals 0

    long-to-int p1, p0

    mul-int/lit16 p1, p1, 0x3e8

    .line 107
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    return-void
.end method

.method public static setLocation(DD)V
    .locals 2

    .line 98
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 99
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    .line 102
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 p0, 0x1

    .line 103
    aput-wide p2, v0, p0

    return-void
.end method
