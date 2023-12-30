.class public final Lu/aly/l;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/q;
.implements Lu/aly/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/l$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private c:Lu/aly/t;

.field private d:Lcom/umeng/analytics/h;

.field private e:Lu/aly/ab;

.field private f:Lu/aly/am;

.field private g:Lu/aly/al;

.field private h:Lu/aly/an;

.field private i:Lu/aly/l$a;

.field private j:Lu/aly/g$a;

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b77400

    .line 40
    iput-wide v0, p0, Lu/aly/l;->a:J

    const/16 v0, 0x1388

    .line 41
    iput v0, p0, Lu/aly/l;->b:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lu/aly/l;->c:Lu/aly/t;

    .line 43
    iput-object v0, p0, Lu/aly/l;->d:Lcom/umeng/analytics/h;

    .line 44
    iput-object v0, p0, Lu/aly/l;->e:Lu/aly/ab;

    .line 45
    iput-object v0, p0, Lu/aly/l;->f:Lu/aly/am;

    .line 46
    iput-object v0, p0, Lu/aly/l;->g:Lu/aly/al;

    .line 47
    iput-object v0, p0, Lu/aly/l;->h:Lu/aly/an;

    .line 48
    iput-object v0, p0, Lu/aly/l;->i:Lu/aly/l$a;

    .line 49
    iput-object v0, p0, Lu/aly/l;->j:Lu/aly/g$a;

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lu/aly/l;->k:I

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lu/aly/l;->l:J

    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lu/aly/l;->m:I

    .line 55
    iput v2, p0, Lu/aly/l;->n:I

    .line 60
    iput-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    .line 62
    new-instance v3, Lu/aly/t;

    invoke-direct {v3, p1}, Lu/aly/t;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lu/aly/l;->c:Lu/aly/t;

    .line 63
    new-instance v3, Lu/aly/ab;

    invoke-direct {v3, p1}, Lu/aly/ab;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lu/aly/l;->e:Lu/aly/ab;

    .line 65
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v3

    iput-object v3, p0, Lu/aly/l;->d:Lcom/umeng/analytics/h;

    .line 66
    invoke-static {p1}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/g;->b()Lu/aly/g$a;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l;->j:Lu/aly/g$a;

    .line 68
    new-instance p1, Lu/aly/l$a;

    invoke-direct {p1, p0}, Lu/aly/l$a;-><init>(Lu/aly/l;)V

    iput-object p1, p0, Lu/aly/l;->i:Lu/aly/l$a;

    .line 70
    iget-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/al;->a(Landroid/content/Context;)Lu/aly/al;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l;->g:Lu/aly/al;

    .line 71
    iget-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/am;->a(Landroid/content/Context;)Lu/aly/am;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l;->f:Lu/aly/am;

    .line 72
    iget-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-static {p1, v3}, Lu/aly/an;->a(Landroid/content/Context;Lu/aly/ab;)Lu/aly/an;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l;->h:Lu/aly/an;

    .line 75
    iget-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "thtstart"

    .line 76
    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/l;->l:J

    const-string v0, "gkvc"

    .line 77
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/l;->m:I

    const-string v0, "ekvc"

    .line 78
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lu/aly/l;->n:I

    return-void
.end method

.method private a([B)Lu/aly/bp;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 246
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/bp;

    invoke-direct {v1}, Lu/aly/bp;-><init>()V

    .line 247
    new-instance v2, Lu/aly/cc;

    invoke-direct {v2}, Lu/aly/cc;-><init>()V

    invoke-virtual {v2, v1, p1}, Lu/aly/cc;->a(Lu/aly/bz;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static synthetic a(Lu/aly/l;)Lu/aly/g$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->j:Lu/aly/g$a;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-virtual {v2}, Lu/aly/ab;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 152
    invoke-virtual {p0, v0}, Lu/aly/l;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/l;->a(Lu/aly/bp;)V

    .line 153
    new-instance v0, Lu/aly/l$1;

    invoke-direct {v0, p0}, Lu/aly/l$1;-><init>(Lu/aly/l;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lu/aly/be;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez p1, :cond_1

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 390
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/be;

    invoke-virtual {v2}, Lu/aly/be;->s()Ljava/util/List;

    move-result-object v2

    .line 391
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 392
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 393
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-lt p1, v1, :cond_1

    .line 394
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 398
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr p1, v3

    .line 399
    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 406
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/aly/be;

    invoke-virtual {p1}, Lu/aly/be;->n()Ljava/util/List;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_2

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p2

    .line 409
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-lt p2, p3, :cond_3

    .line 410
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 414
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    .line 415
    invoke-interface {p1}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Lu/aly/bp;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 166
    iget-object v0, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->a(Landroid/content/Context;)Lu/aly/e;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lu/aly/e;->a()V

    .line 168
    invoke-virtual {v0}, Lu/aly/e;->b()Lu/aly/bb;

    move-result-object v1

    invoke-virtual {p1, v1}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 169
    invoke-direct {p0, p1}, Lu/aly/l;->d(Lu/aly/bp;)Lu/aly/bp;

    move-result-object p1

    invoke-direct {p0, p1}, Lu/aly/l;->b(Lu/aly/bp;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lu/aly/l;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lu/aly/c;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object p1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lu/aly/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object p1

    .line 180
    :goto_0
    invoke-virtual {p1}, Lu/aly/c;->c()[B

    move-result-object p1

    .line 181
    iget-object v1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/umeng/analytics/h;->f()V

    .line 183
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/h;->b([B)V

    .line 184
    invoke-virtual {v0}, Lu/aly/e;->d()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lu/aly/l;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lu/aly/l;->b(I)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 138
    iget-object v0, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lu/aly/l;->c:Lu/aly/t;

    new-instance v2, Lu/aly/ap;

    iget-object v3, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-virtual {v3}, Lu/aly/ab;->n()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lu/aly/ap;-><init>(J)V

    invoke-virtual {v1, v2}, Lu/aly/t;->a(Lu/aly/ap;)V

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lu/aly/l;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-direct {p0}, Lu/aly/l;->e()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 145
    invoke-direct {p0}, Lu/aly/l;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    :cond_2
    invoke-virtual {p0}, Lu/aly/l;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lu/aly/l;)Lu/aly/am;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->f:Lu/aly/am;

    return-object p0
.end method

.method private b(I)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lu/aly/l;->a(I)V

    return-void
.end method

.method private b(Z)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bt;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "network is unavailable"

    .line 275
    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_0
    iget-object v0, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 283
    :cond_1
    iget-object v0, p0, Lu/aly/l;->i:Lu/aly/l$a;

    invoke-virtual {v0, p1}, Lu/aly/l$a;->b(Z)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/ReportPolicy$i;->a(Z)Z

    move-result p1

    return p1
.end method

.method private b(Lu/aly/bp;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 261
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/ci;

    invoke-direct {v1}, Lu/aly/ci;-><init>()V

    invoke-virtual {v1, p1}, Lu/aly/ci;->a(Lu/aly/bz;)[B

    move-result-object v1

    .line 262
    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Fail to serialize log ..."

    .line 267
    invoke-static {v1, p1}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic c(Lu/aly/l;)Lu/aly/ab;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->e:Lu/aly/ab;

    return-object p0
.end method

.method private c(Lu/aly/bp;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "No data to report"

    .line 335
    invoke-static {p1}, Lu/aly/bv;->e(Ljava/lang/String;)V

    return v0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lu/aly/bp;->c()Lu/aly/as;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lu/aly/bp;->f()Lu/aly/ar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lu/aly/bp;->j()Lu/aly/au;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p1}, Lu/aly/bp;->m()Lu/aly/bh;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method static synthetic d(Lu/aly/l;)Lu/aly/an;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->h:Lu/aly/an;

    return-object p0
.end method

.method private d(Lu/aly/bp;)Lu/aly/bp;
    .locals 11

    .line 350
    invoke-virtual {p1}, Lu/aly/bp;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/aly/be;

    invoke-virtual {v5}, Lu/aly/be;->q()I

    move-result v5

    add-int/2addr v3, v5

    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/aly/be;

    invoke-virtual {v5}, Lu/aly/be;->l()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 359
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    iget-wide v5, p0, Lu/aly/l;->l:J

    sub-long v5, v2, v5

    const-wide/32 v7, 0x1b77400

    const/16 v9, 0x1388

    cmp-long v10, v5, v7

    if-lez v10, :cond_6

    add-int/lit16 v5, v1, -0x1388

    add-int/lit16 v6, v4, -0x1388

    if-gtz v5, :cond_2

    if-lez v6, :cond_3

    .line 365
    :cond_2
    invoke-direct {p0, v5, v6, v0}, Lu/aly/l;->a(IILjava/util/List;)V

    :cond_3
    if-lez v5, :cond_4

    const/16 v1, 0x1388

    .line 368
    :cond_4
    iput v1, p0, Lu/aly/l;->m:I

    if-lez v6, :cond_5

    const/16 v4, 0x1388

    .line 369
    :cond_5
    iput v4, p0, Lu/aly/l;->n:I

    .line 370
    iput-wide v2, p0, Lu/aly/l;->l:J

    goto :goto_6

    .line 372
    :cond_6
    iget v2, p0, Lu/aly/l;->m:I

    if-le v2, v9, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    add-int/2addr v2, v1

    sub-int/2addr v2, v9

    .line 373
    :goto_2
    iget v3, p0, Lu/aly/l;->n:I

    if-le v3, v9, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    add-int/2addr v3, v4

    sub-int/2addr v3, v9

    :goto_3
    if-gtz v2, :cond_9

    if-lez v3, :cond_a

    .line 376
    :cond_9
    invoke-direct {p0, v2, v3, v0}, Lu/aly/l;->a(IILjava/util/List;)V

    :cond_a
    if-lez v2, :cond_b

    const/16 v0, 0x1388

    goto :goto_4

    .line 379
    :cond_b
    iget v0, p0, Lu/aly/l;->m:I

    add-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lu/aly/l;->m:I

    if-lez v3, :cond_c

    goto :goto_5

    .line 380
    :cond_c
    iget v0, p0, Lu/aly/l;->n:I

    add-int v9, v0, v4

    :goto_5
    iput v9, p0, Lu/aly/l;->n:I

    :goto_6
    return-object p1
.end method

.method private d()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v0}, Lu/aly/t;->b()I

    move-result v0

    iget v1, p0, Lu/aly/l;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lu/aly/l;)Lu/aly/al;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->g:Lu/aly/al;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 292
    :try_start_0
    iget-object v0, p0, Lu/aly/l;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 293
    new-instance v0, Lu/aly/z;

    iget-object v2, p0, Lu/aly/l;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-direct {v0, v2, v3}, Lu/aly/z;-><init>(Landroid/content/Context;Lu/aly/ab;)V

    .line 294
    invoke-virtual {v0, p0}, Lu/aly/z;->a(Lu/aly/x;)V

    .line 295
    iget-object v2, p0, Lu/aly/l;->f:Lu/aly/am;

    invoke-virtual {v2}, Lu/aly/am;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Lu/aly/z;->b(Z)V

    .line 298
    :cond_0
    invoke-virtual {v0}, Lu/aly/z;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 300
    invoke-virtual {p0, v0}, Lu/aly/l;->a([I)Lu/aly/bp;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lu/aly/l;->c(Lu/aly/bp;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, " not legitimate!"

    .line 303
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    return-void

    .line 307
    :cond_2
    new-instance v2, Lu/aly/z;

    iget-object v3, p0, Lu/aly/l;->o:Landroid/content/Context;

    iget-object v4, p0, Lu/aly/l;->e:Lu/aly/ab;

    invoke-direct {v2, v3, v4}, Lu/aly/z;-><init>(Landroid/content/Context;Lu/aly/ab;)V

    .line 308
    invoke-virtual {v2, p0}, Lu/aly/z;->a(Lu/aly/x;)V

    .line 309
    iget-object v3, p0, Lu/aly/l;->f:Lu/aly/am;

    invoke-virtual {v3}, Lu/aly/am;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {v2, v1}, Lu/aly/z;->b(Z)V

    .line 312
    :cond_3
    invoke-direct {p0, v0}, Lu/aly/l;->d(Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lu/aly/z;->a(Lu/aly/bp;)V

    .line 313
    invoke-direct {p0}, Lu/aly/l;->f()Z

    move-result v0

    invoke-virtual {v2, v0}, Lu/aly/z;->a(Z)V

    .line 314
    invoke-virtual {v2}, Lu/aly/z;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 317
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic f(Lu/aly/l;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lu/aly/l;->o:Landroid/content/Context;

    return-object p0
.end method

.method private f()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lu/aly/l;->j:Lu/aly/g$a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lu/aly/g$a;->c(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    .line 428
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    return v0
.end method


# virtual methods
.method protected varargs a([I)Lu/aly/bp;
    .locals 8

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Appkey is missing ,Please check AndroidManifest.xml"

    .line 191
    invoke-static {p1}, Lu/aly/bv;->e(Ljava/lang/String;)V

    return-object v0

    .line 197
    :cond_0
    iget-object v1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->e()[B

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v1}, Lu/aly/l;->a([B)Lu/aly/bp;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 201
    iget-object v2, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v2}, Lu/aly/t;->b()I

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    if-nez v1, :cond_3

    .line 206
    new-instance v1, Lu/aly/bp;

    invoke-direct {v1}, Lu/aly/bp;-><init>()V

    .line 208
    :cond_3
    iget-object v2, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v2, v1}, Lu/aly/t;->a(Lu/aly/bp;)V

    .line 210
    sget-boolean v2, Lu/aly/bv;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lu/aly/bp;->B()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 212
    invoke-virtual {v1}, Lu/aly/bp;->z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/aly/bn;

    .line 213
    invoke-virtual {v6}, Lu/aly/bn;->p()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    const-string v2, "missing Activities or PageViews"

    .line 219
    invoke-static {v2}, Lu/aly/bv;->d(Ljava/lang/String;)V

    .line 223
    :cond_6
    iget-object v2, p0, Lu/aly/l;->f:Lu/aly/am;

    iget-object v5, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-virtual {v2, v5, v1}, Lu/aly/am;->a(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 225
    array-length v2, p1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 226
    new-instance v2, Lu/aly/at;

    invoke-direct {v2}, Lu/aly/at;-><init>()V

    .line 227
    new-instance v5, Lu/aly/bf;

    aget v4, p1, v4

    div-int/lit16 v4, v4, 0x3e8

    aget p1, p1, v3

    int-to-long v6, p1

    invoke-direct {v5, v4, v6, v7}, Lu/aly/bf;-><init>(IJ)V

    invoke-virtual {v2, v5}, Lu/aly/at;->a(Lu/aly/bf;)Lu/aly/at;

    .line 228
    invoke-virtual {v1, v2}, Lu/aly/bp;->a(Lu/aly/at;)Lu/aly/bp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Fail to construct message ..."

    .line 233
    invoke-static {v1, p1}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iget-object p1, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/h;->f()V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 83
    iget-object v0, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bt;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lu/aly/l;->e()V

    goto :goto_0

    :cond_0
    const-string v0, "network is unavailable"

    .line 86
    invoke-static {v0}, Lu/aly/bv;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lu/aly/g$a;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lu/aly/l;->g:Lu/aly/al;

    invoke-virtual {v0, p1}, Lu/aly/al;->a(Lu/aly/g$a;)V

    .line 443
    iget-object v0, p0, Lu/aly/l;->f:Lu/aly/am;

    invoke-virtual {v0, p1}, Lu/aly/am;->a(Lu/aly/g$a;)V

    .line 444
    iget-object v0, p0, Lu/aly/l;->h:Lu/aly/an;

    invoke-virtual {v0, p1}, Lu/aly/an;->a(Lu/aly/g$a;)V

    .line 445
    iget-object v0, p0, Lu/aly/l;->i:Lu/aly/l$a;

    invoke-virtual {v0, p1}, Lu/aly/l$a;->a(Lu/aly/g$a;)V

    return-void
.end method

.method public a(Lu/aly/r;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v0, p1}, Lu/aly/t;->a(Lu/aly/r;)V

    .line 99
    :cond_0
    instance-of p1, p1, Lu/aly/bn;

    invoke-direct {p0, p1}, Lu/aly/l;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 110
    iget-object v0, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v0}, Lu/aly/t;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    .line 112
    invoke-virtual {p0, v0}, Lu/aly/l;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/l;->b(Lu/aly/bp;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lu/aly/l;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/h;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 117
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lu/aly/l;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->f()V

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lu/aly/l;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lu/aly/l;->l:J

    const-string v3, "thtstart"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lu/aly/l;->m:I

    const-string v2, "gkvc"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lu/aly/l;->n:I

    const-string v2, "ekvc"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Lu/aly/r;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lu/aly/l;->c:Lu/aly/t;

    invoke-virtual {v0, p1}, Lu/aly/t;->a(Lu/aly/r;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 132
    invoke-virtual {p0, v0}, Lu/aly/l;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/l;->a(Lu/aly/bp;)V

    return-void
.end method
