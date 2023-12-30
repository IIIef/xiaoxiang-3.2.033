.class public Lu/aly/an;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lu/aly/x;


# static fields
.field private static l:Lu/aly/an;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/umeng/analytics/h;

.field private f:Lu/aly/ab;

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lu/aly/ab;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4d3f6400

    .line 15
    iput-wide v0, p0, Lu/aly/an;->a:J

    const-wide/32 v2, 0x7b98a00

    .line 16
    iput-wide v2, p0, Lu/aly/an;->b:J

    const v2, 0x1b7740

    .line 17
    iput v2, p0, Lu/aly/an;->c:I

    const/16 v2, 0x2710

    .line 18
    iput v2, p0, Lu/aly/an;->d:I

    .line 23
    iput-wide v0, p0, Lu/aly/an;->g:J

    .line 24
    iput v2, p0, Lu/aly/an;->h:I

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lu/aly/an;->i:J

    .line 27
    iput-wide v0, p0, Lu/aly/an;->j:J

    .line 41
    iput-object p1, p0, Lu/aly/an;->k:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p1

    iput-object p1, p0, Lu/aly/an;->e:Lcom/umeng/analytics/h;

    .line 43
    iput-object p2, p0, Lu/aly/an;->f:Lu/aly/ab;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lu/aly/ab;)Lu/aly/an;
    .locals 2

    const-class v0, Lu/aly/an;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lu/aly/an;->l:Lu/aly/an;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lu/aly/an;

    invoke-direct {v1, p0, p1}, Lu/aly/an;-><init>(Landroid/content/Context;Lu/aly/ab;)V

    sput-object v1, Lu/aly/an;->l:Lu/aly/an;

    .line 35
    invoke-static {p0}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object p0

    invoke-virtual {p0}, Lu/aly/g;->b()Lu/aly/g$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Lu/aly/an;->a(Lu/aly/g$a;)V

    .line 37
    :cond_0
    sget-object p0, Lu/aly/an;->l:Lu/aly/an;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lu/aly/g$a;)V
    .locals 2

    const-wide/32 v0, 0x4d3f6400

    .line 88
    invoke-virtual {p1, v0, v1}, Lu/aly/g$a;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/an;->g:J

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Lu/aly/g$a;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 92
    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    if-lez p1, :cond_1

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    const v0, 0x1b7740

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    iput p1, p0, Lu/aly/an;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x2710

    .line 93
    iput p1, p0, Lu/aly/an;->h:I

    goto :goto_1

    .line 98
    :cond_2
    iput p1, p0, Lu/aly/an;->h:I

    :goto_1
    return-void
.end method

.method public a()Z
    .locals 7

    .line 52
    iget-object v0, p0, Lu/aly/an;->e:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lu/aly/an;->f:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lu/aly/an;->f:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->o()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 61
    iget-wide v4, p0, Lu/aly/an;->g:J

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 62
    iget-object v1, p0, Lu/aly/an;->k:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget v4, p0, Lu/aly/an;->h:I

    invoke-static {v4, v1}, Lcom/umeng/analytics/b;->a(ILjava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lu/aly/an;->i:J

    .line 64
    iput-wide v2, p0, Lu/aly/an;->j:J

    return v0

    :cond_2
    const-wide/32 v4, 0x7b98a00

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    const-wide/16 v4, 0x0

    .line 67
    iput-wide v4, p0, Lu/aly/an;->i:J

    .line 68
    iput-wide v2, p0, Lu/aly/an;->j:J

    return v0

    :cond_3
    return v1
.end method

.method public b()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lu/aly/an;->i:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lu/aly/an;->j:J

    return-wide v0
.end method
