.class public Lu/aly/ad;
.super Ljava/lang/Object;
.source "TrafficTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "uptr"

.field private static final b:Ljava/lang/String; = "dntr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/bo;
    .locals 15

    const-string v0, "dntr"

    const-string v1, "uptr"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 27
    :try_start_0
    new-instance v5, Lu/aly/bo;

    invoke-direct {v5}, Lu/aly/bo;-><init>()V

    .line 29
    invoke-static {p0}, Lu/aly/ad;->b(Landroid/content/Context;)[J

    move-result-object v6

    .line 30
    aget-wide v7, v6, v3

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    aget-wide v7, v6, v4

    cmp-long v11, v7, v9

    if-gtz v11, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v7, -0x1

    .line 35
    invoke-interface {p0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 36
    invoke-interface {p0, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget-wide v13, v6, v4

    invoke-interface {p0, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget-wide v13, v6, v3

    invoke-interface {p0, v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long p0, v11, v9

    if-lez p0, :cond_3

    cmp-long p0, v7, v9

    if-gtz p0, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    aget-wide v0, v6, v3

    sub-long/2addr v0, v7

    aput-wide v0, v6, v3

    .line 43
    aget-wide v0, v6, v4

    sub-long/2addr v0, v11

    aput-wide v0, v6, v4

    .line 45
    aget-wide v0, v6, v3

    cmp-long p0, v0, v9

    if-lez p0, :cond_3

    aget-wide v0, v6, v4

    cmp-long p0, v0, v9

    if-gtz p0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    aget-wide v0, v6, v3

    long-to-int p0, v0

    invoke-virtual {v5, p0}, Lu/aly/bo;->c(I)Lu/aly/bo;

    .line 49
    aget-wide v0, v6, v4

    long-to-int p0, v0

    invoke-virtual {v5, p0}, Lu/aly/bo;->a(I)Lu/aly/bo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_3
    :goto_0
    return-object v2

    :catch_0
    new-array p0, v4, [Ljava/lang/Object;

    const-string v0, "sdk less than 2.2 has get no traffic"

    aput-object v0, p0, v3

    const-string v0, "MobclickAgent"

    .line 53
    invoke-static {v0, p0}, Lu/aly/bv;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private static b(Landroid/content/Context;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.net.TrafficStats"

    .line 59
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 60
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getUidRxBytes"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 61
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v5, "getUidTxBytes"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_0

    return-object v3

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [J

    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v4

    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v5, v1

    return-object v5
.end method
