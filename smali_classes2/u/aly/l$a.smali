.class public Lu/aly/l$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/l;

.field private b:Lcom/umeng/analytics/ReportPolicy$i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/l;)V
    .locals 1

    .line 463
    iput-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 457
    iput v0, p0, Lu/aly/l$a;->c:I

    .line 458
    iput v0, p0, Lu/aly/l$a;->d:I

    .line 460
    iput v0, p0, Lu/aly/l$a;->e:I

    .line 461
    iput v0, p0, Lu/aly/l$a;->f:I

    .line 464
    invoke-static {p1}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/g$a;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lu/aly/g$a;->a(II)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 465
    aget v0, p1, v0

    iput v0, p0, Lu/aly/l$a;->c:I

    const/4 v0, 0x1

    .line 466
    aget p1, p1, v0

    iput p1, p0, Lu/aly/l$a;->d:I

    return-void
.end method

.method private b(II)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 3

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 561
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto/16 :goto_0

    .line 557
    :cond_1
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$k;

    if-eqz p2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$k;

    iget-object p2, p0, Lu/aly/l$a;->a:Lu/aly/l;

    .line 558
    invoke-static {p2}, Lu/aly/l;->c(Lu/aly/l;)Lu/aly/ab;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/ReportPolicy$k;-><init>(Lu/aly/ab;)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, p1, Lcom/umeng/analytics/ReportPolicy$e;

    if-eqz v0, :cond_4

    .line 540
    move-object v0, p1

    check-cast v0, Lcom/umeng/analytics/ReportPolicy$e;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    goto :goto_0

    .line 542
    :cond_4
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$e;

    iget-object v0, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->c(Lu/aly/l;)Lu/aly/ab;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$e;-><init>(Lu/aly/ab;J)V

    goto :goto_0

    .line 553
    :cond_5
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$j;

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$j;

    iget-object p2, p0, Lu/aly/l$a;->a:Lu/aly/l;

    .line 554
    invoke-static {p2}, Lu/aly/l;->f(Lu/aly/l;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/ReportPolicy$j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 546
    :cond_7
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$g;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$g;

    iget-object p2, p0, Lu/aly/l$a;->a:Lu/aly/l;

    .line 547
    invoke-static {p2}, Lu/aly/l;->c(Lu/aly/l;)Lu/aly/ab;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/ReportPolicy$g;-><init>(Lu/aly/ab;)V

    goto :goto_0

    .line 535
    :cond_9
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz p2, :cond_a

    goto :goto_0

    :cond_a
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 550
    :cond_b
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of p2, p1, Lcom/umeng/analytics/ReportPolicy$h;

    if-eqz p2, :cond_c

    goto :goto_0

    :cond_c
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$h;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$h;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 569
    iput p1, p0, Lu/aly/l$a;->e:I

    .line 570
    iput p2, p0, Lu/aly/l$a;->f:I

    return-void
.end method

.method public a(Lu/aly/g$a;)V
    .locals 1

    const/4 v0, -0x1

    .line 574
    invoke-virtual {p1, v0, v0}, Lu/aly/g$a;->a(II)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 575
    aget v0, p1, v0

    iput v0, p0, Lu/aly/l$a;->c:I

    const/4 v0, 0x1

    .line 576
    aget p1, p1, v0

    iput p1, p0, Lu/aly/l$a;->d:I

    return-void
.end method

.method protected a(Z)V
    .locals 4

    .line 473
    iget-object v0, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->b(Lu/aly/l;)Lu/aly/am;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/am;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 475
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, p1, Lcom/umeng/analytics/ReportPolicy$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 476
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v0, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->c(Lu/aly/l;)Lu/aly/ab;

    move-result-object v0

    iget-object v1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v1}, Lu/aly/l;->b(Lu/aly/l;)Lu/aly/am;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/ab;Lu/aly/am;)V

    :goto_1
    iput-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_4

    .line 478
    :cond_2
    iget-object v0, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v3, v0, Lcom/umeng/analytics/ReportPolicy$c;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_b

    if-eqz p1, :cond_4

    .line 480
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->d(Lu/aly/l;)Lu/aly/an;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/an;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 481
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v0, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->d(Lu/aly/l;)Lu/aly/an;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/an;->b()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p1, v1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(I)V

    iput-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 482
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->d(Lu/aly/l;)Lu/aly/an;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/an;->b()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Lu/aly/l;->a(Lu/aly/l;I)V

    goto/16 :goto_4

    .line 485
    :cond_4
    sget-boolean p1, Lu/aly/bv;->a:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/g$a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Debug: send log every 15 seconds"

    .line 486
    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V

    .line 487
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v0, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->c(Lu/aly/l;)Lu/aly/ab;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/ab;)V

    iput-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_4

    .line 488
    :cond_5
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->e(Lu/aly/l;)Lu/aly/al;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/al;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Start A/B Test"

    .line 489
    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->e(Lu/aly/l;)Lu/aly/al;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/al;->b()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 492
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/g$a;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 493
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/g$a;

    move-result-object p1

    const v0, 0x15f90

    invoke-virtual {p1, v0}, Lu/aly/g$a;->d(I)I

    move-result v2

    goto :goto_3

    .line 494
    :cond_6
    iget v2, p0, Lu/aly/l$a;->d:I

    if-lez v2, :cond_7

    goto :goto_3

    .line 497
    :cond_7
    iget v2, p0, Lu/aly/l$a;->f:I

    .line 500
    :cond_8
    :goto_3
    iget-object p1, p0, Lu/aly/l$a;->a:Lu/aly/l;

    invoke-static {p1}, Lu/aly/l;->e(Lu/aly/l;)Lu/aly/al;

    move-result-object p1

    invoke-virtual {p1}, Lu/aly/al;->b()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lu/aly/l$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_4

    .line 502
    :cond_9
    iget p1, p0, Lu/aly/l$a;->e:I

    .line 503
    iget v0, p0, Lu/aly/l$a;->f:I

    .line 504
    iget v1, p0, Lu/aly/l$a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 506
    iget v0, p0, Lu/aly/l$a;->d:I

    move p1, v1

    .line 508
    :cond_a
    invoke-direct {p0, p1, v0}, Lu/aly/l$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object p1

    iput-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 514
    :cond_b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Report policy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 0

    .line 518
    invoke-virtual {p0, p1}, Lu/aly/l$a;->a(Z)V

    .line 519
    iget-object p1, p0, Lu/aly/l$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    return-object p1
.end method
