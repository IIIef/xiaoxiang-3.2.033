.class public Lu/aly/aa;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"

.field private static g:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a_start_time"

    .line 30
    iput-object v0, p0, Lu/aly/aa;->d:Ljava/lang/String;

    const-string v0, "a_end_time"

    .line 31
    iput-object v0, p0, Lu/aly/aa;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 7

    .line 177
    invoke-static {p1}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/aa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0, p1}, Lu/aly/aa;->a(Landroid/content/Context;)Lu/aly/ak;

    move-result-object p1

    .line 182
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "session_id"

    .line 184
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "session_start_time"

    invoke-interface {p2, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "session_end_time"

    const-wide/16 v3, 0x0

    .line 186
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "a_start_time"

    invoke-interface {p2, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "a_end_time"

    .line 188
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lu/aly/m;->a(Lu/aly/r;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    move-object p2, p1

    check-cast p2, Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/m;->a(Lu/aly/r;)V

    :goto_0
    return-object v1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_start_time"

    .line 91
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    .line 92
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_start_time"

    .line 93
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    .line 94
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "activities"

    const-string v1, ""

    .line 95
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 9

    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    .line 160
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "a_end_time"

    .line 161
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 p1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    sub-long v0, v7, v3

    .line 165
    sget-wide v2, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "onResume called before onPause"

    .line 166
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    return p1

    :cond_0
    sub-long/2addr v7, v5

    .line 170
    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v2, v7, v0

    if-lez v2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Lu/aly/aa;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "session_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu/aly/aa;->g:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object p0, Lu/aly/aa;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/ak;
    .locals 15

    .line 37
    invoke-static/range {p1 .. p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    .line 39
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v2, "session_start_time"

    const-wide/16 v3, 0x0

    .line 44
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "session_end_time"

    .line 45
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    sub-long v9, v7, v5

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    cmp-long v2, v11, v13

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v9

    .line 55
    :cond_2
    :goto_0
    new-instance v2, Lu/aly/ak;

    invoke-direct {v2}, Lu/aly/ak;-><init>()V

    .line 57
    invoke-virtual {v2, v1}, Lu/aly/ak;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 58
    invoke-virtual {v2, v5, v6}, Lu/aly/ak;->a(J)Lu/aly/bn;

    .line 59
    invoke-virtual {v2, v7, v8}, Lu/aly/ak;->b(J)Lu/aly/bn;

    .line 60
    invoke-virtual {v2, v3, v4}, Lu/aly/ak;->c(J)Lu/aly/bn;

    .line 62
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v1

    if-eqz v1, :cond_4

    .line 64
    new-instance v10, Lu/aly/bg;

    const/4 v11, 0x0

    aget-wide v4, v1, v11

    const/4 v12, 0x1

    aget-wide v6, v1, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lu/aly/bg;-><init>(DDJ)V

    .line 65
    invoke-virtual {v2}, Lu/aly/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v2, v10}, Lu/aly/ak;->a(Lu/aly/bg;)V

    goto :goto_1

    :cond_3
    new-array v1, v12, [Lu/aly/bg;

    aput-object v10, v1, v11

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lu/aly/ak;->b(Ljava/util/List;)Lu/aly/bn;

    .line 72
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lu/aly/ad;->a(Landroid/content/Context;)Lu/aly/bo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {v2, v1}, Lu/aly/ak;->a(Lu/aly/bo;)Lu/aly/bn;

    .line 77
    :cond_5
    invoke-static {v0}, Lu/aly/ae;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 80
    invoke-virtual {v2, v1}, Lu/aly/ak;->a(Ljava/util/List;)Lu/aly/bn;

    :cond_6
    move-object v1, p0

    .line 83
    invoke-direct {p0, v0}, Lu/aly/aa;->a(Landroid/content/SharedPreferences;)V

    return-object v2
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 102
    invoke-static {p1}, Lu/aly/bt;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lu/aly/aa;->g:Ljava/lang/String;

    return-object p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 118
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lu/aly/aa;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-direct {p0, p1, v0}, Lu/aly/aa;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start new session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v1, "session_id"

    .line 127
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "a_start_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v1, 0x0

    const-string v3, "a_end_time"

    .line 130
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extend current session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .line 137
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    .line 142
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 144
    sget-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v3, :cond_1

    const-string p1, "onPause called before onResume"

    .line 145
    invoke-static {p1}, Lu/aly/bv;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 151
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    .line 152
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    .line 153
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 9

    .line 204
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "session_id"

    .line 209
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v2, "a_start_time"

    const-wide/16 v3, 0x0

    .line 214
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "a_end_time"

    .line 215
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lu/aly/aa;->d(Landroid/content/Context;)V

    .line 223
    :cond_2
    invoke-static {p1}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/aa;->a(Landroid/content/Context;)Lu/aly/ak;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {v0, p1}, Lu/aly/m;->b(Lu/aly/r;)V

    :cond_3
    return v1
.end method

.method public f(Landroid/content/Context;)V
    .locals 6

    .line 233
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/aa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_id"

    .line 242
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "session_start_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    .line 244
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    .line 246
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restart session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->c(Ljava/lang/String;)V

    return-void
.end method
