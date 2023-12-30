.class public Lu/aly/g$a;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 264
    iput v0, p0, Lu/aly/g$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/g$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/g$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/g$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/g$a;->e:I

    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lu/aly/g$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/g$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/g$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/g$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/g$a;->j:I

    return-void
.end method

.method constructor <init>(Lu/aly/bc;)V
    .locals 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 264
    iput v0, p0, Lu/aly/g$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/g$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/g$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/g$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/g$a;->e:I

    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lu/aly/g$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/g$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/g$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/g$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/g$a;->j:I

    .line 279
    invoke-virtual {p0, p1}, Lu/aly/g$a;->a(Lu/aly/bc;)V

    return-void
.end method

.method private a(Lu/aly/bc;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 429
    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/aly/bd;

    if-eqz p1, :cond_2

    .line 435
    invoke-virtual {p1}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 440
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 448
    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/aly/bd;

    if-eqz p1, :cond_2

    .line 454
    invoke-virtual {p1}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p1}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 306
    iget v0, p0, Lu/aly/g$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p1
.end method

.method public a(J)J
    .locals 2

    .line 417
    iget v0, p0, Lu/aly/g$a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-wide p1

    :cond_0
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    return-wide p1

    :cond_1
    const-wide/32 p1, 0x36ee80

    int-to-long v0, v0

    mul-long v0, v0, p1

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lu/aly/g$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lu/aly/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lu/aly/g$a;->f:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Lu/aly/bc;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "defcon"

    .line 287
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->a:I

    const-string v0, "latent"

    .line 288
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->b:I

    const-string v0, "codex"

    .line 289
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->c:I

    const-string v0, "report_policy"

    .line 290
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->d:I

    const-string v0, "report_interval"

    .line 291
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->e:I

    const-string v0, "client_test"

    .line 292
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/g$a;->f:Ljava/lang/String;

    const-string v0, "test_report_interval"

    .line 293
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->g:I

    const-string v0, "umid"

    .line 294
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/g$a;->h:Ljava/lang/String;

    const-string v0, "integrated_test"

    .line 295
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/g$a;->i:I

    const-string v0, "latent_hours"

    .line 296
    invoke-direct {p0, p1, v0}, Lu/aly/g$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lu/aly/g$a;->j:I

    return-void
.end method

.method public a()Z
    .locals 2

    .line 399
    iget v0, p0, Lu/aly/g$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(II)[I
    .locals 5

    .line 359
    iget v0, p0, Lu/aly/g$a;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    invoke-static {v0}, Lcom/umeng/analytics/ReportPolicy;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget p1, p0, Lu/aly/g$a;->e:I

    const/16 p2, 0x5a

    if-eq p1, v4, :cond_1

    if-lt p1, p2, :cond_1

    const v0, 0x15180

    if-le p1, v0, :cond_2

    .line 364
    :cond_1
    iput p2, p0, Lu/aly/g$a;->e:I

    :cond_2
    new-array p1, v3, [I

    .line 367
    iget p2, p0, Lu/aly/g$a;->d:I

    aput p2, p1, v2

    iget p2, p0, Lu/aly/g$a;->e:I

    mul-int/lit16 p2, p2, 0x3e8

    aput p2, p1, v1

    return-object p1

    :cond_3
    :goto_0
    new-array v0, v3, [I

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0
.end method

.method public b(I)I
    .locals 2

    .line 325
    iget v0, p0, Lu/aly/g$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    if-ltz v0, :cond_2

    const/16 v1, 0x708

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_2
    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 403
    iget-object p1, p0, Lu/aly/g$a;->h:Ljava/lang/String;

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 407
    iget v0, p0, Lu/aly/g$a;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(I)I
    .locals 2

    .line 343
    iget v0, p0, Lu/aly/g$a;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public d(I)I
    .locals 2

    .line 391
    iget v0, p0, Lu/aly/g$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    const v1, 0x15180

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    :goto_0
    return p1
.end method
