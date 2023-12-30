.class Lu/aly/be$a;
.super Lu/aly/di;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lu/aly/be$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/be;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 457
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 458
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 533
    invoke-virtual {p2}, Lu/aly/be;->v()V

    return-void

    .line 461
    :cond_0
    iget-short v1, v0, Lu/aly/ct;->c:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xf

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 525
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_4

    .line 507
    :cond_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v5, :cond_3

    .line 509
    invoke-virtual {p1}, Lu/aly/cy;->p()Lu/aly/cu;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/be;->d:Ljava/util/List;

    .line 511
    :goto_1
    iget v1, v0, Lu/aly/cu;->b:I

    if-ge v4, v1, :cond_2

    .line 513
    new-instance v1, Lu/aly/ax;

    invoke-direct {v1}, Lu/aly/ax;-><init>()V

    .line 514
    invoke-virtual {v1, p1}, Lu/aly/ax;->a(Lu/aly/cy;)V

    .line 515
    iget-object v3, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 517
    :cond_2
    invoke-virtual {p1}, Lu/aly/cy;->q()V

    .line 519
    invoke-virtual {p2, v2}, Lu/aly/be;->d(Z)V

    goto/16 :goto_4

    .line 521
    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_4

    .line 489
    :cond_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v5, :cond_6

    .line 491
    invoke-virtual {p1}, Lu/aly/cy;->p()Lu/aly/cu;

    move-result-object v0

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/be;->c:Ljava/util/List;

    .line 493
    :goto_2
    iget v1, v0, Lu/aly/cu;->b:I

    if-ge v4, v1, :cond_5

    .line 495
    new-instance v1, Lu/aly/ax;

    invoke-direct {v1}, Lu/aly/ax;-><init>()V

    .line 496
    invoke-virtual {v1, p1}, Lu/aly/ax;->a(Lu/aly/cy;)V

    .line 497
    iget-object v3, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 499
    :cond_5
    invoke-virtual {p1}, Lu/aly/cy;->q()V

    .line 501
    invoke-virtual {p2, v2}, Lu/aly/be;->c(Z)V

    goto :goto_4

    .line 503
    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_4

    .line 471
    :cond_7
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v5, :cond_9

    .line 473
    invoke-virtual {p1}, Lu/aly/cy;->p()Lu/aly/cu;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/be;->b:Ljava/util/List;

    .line 475
    :goto_3
    iget v1, v0, Lu/aly/cu;->b:I

    if-ge v4, v1, :cond_8

    .line 477
    new-instance v1, Lu/aly/av;

    invoke-direct {v1}, Lu/aly/av;-><init>()V

    .line 478
    invoke-virtual {v1, p1}, Lu/aly/av;->a(Lu/aly/cy;)V

    .line 479
    iget-object v3, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 481
    :cond_8
    invoke-virtual {p1}, Lu/aly/cy;->q()V

    .line 483
    invoke-virtual {p2, v2}, Lu/aly/be;->b(Z)V

    goto :goto_4

    .line 485
    :cond_9
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_4

    .line 463
    :cond_a
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 464
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    .line 465
    invoke-virtual {p2, v2}, Lu/aly/be;->a(Z)V

    goto :goto_4

    .line 467
    :cond_b
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 527
    :goto_4
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto/16 :goto_0
.end method

.method public synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 450
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->b(Lu/aly/cy;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 538
    invoke-virtual {p2}, Lu/aly/be;->v()V

    .line 540
    invoke-static {}, Lu/aly/be;->w()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 541
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lu/aly/be;->x()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 543
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 546
    :cond_0
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    const/16 v1, 0xc

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-static {}, Lu/aly/be;->y()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 550
    new-instance v0, Lu/aly/cu;

    iget-object v2, p2, Lu/aly/be;->b:Ljava/util/List;

    .line 551
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    .line 550
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cu;)V

    .line 552
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av;

    .line 553
    invoke-virtual {v2, p1}, Lu/aly/av;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p1}, Lu/aly/cy;->f()V

    .line 557
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 560
    :cond_2
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p2}, Lu/aly/be;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    invoke-static {}, Lu/aly/be;->z()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 564
    new-instance v0, Lu/aly/cu;

    iget-object v2, p2, Lu/aly/be;->c:Ljava/util/List;

    .line 565
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    .line 564
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cu;)V

    .line 566
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ax;

    .line 567
    invoke-virtual {v2, p1}, Lu/aly/ax;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 569
    :cond_3
    invoke-virtual {p1}, Lu/aly/cy;->f()V

    .line 571
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 574
    :cond_4
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 575
    invoke-virtual {p2}, Lu/aly/be;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 576
    invoke-static {}, Lu/aly/be;->A()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 578
    new-instance v0, Lu/aly/cu;

    iget-object v2, p2, Lu/aly/be;->d:Ljava/util/List;

    .line 579
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    .line 578
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cu;)V

    .line 580
    iget-object p2, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 581
    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/cy;)V

    goto :goto_2

    .line 583
    :cond_5
    invoke-virtual {p1}, Lu/aly/cy;->f()V

    .line 585
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 588
    :cond_6
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 589
    invoke-virtual {p1}, Lu/aly/cy;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 450
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->a(Lu/aly/cy;Lu/aly/be;)V

    return-void
.end method
