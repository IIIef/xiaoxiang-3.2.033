.class Lu/aly/bb$c;
.super Lu/aly/dj;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Lu/aly/bb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 510
    check-cast p1, Lu/aly/de;

    .line 512
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 513
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ba;

    invoke-virtual {v1, p1}, Lu/aly/ba;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 519
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 522
    :cond_1
    invoke-virtual {p2}, Lu/aly/bb;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 525
    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 526
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 529
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/az;

    .line 530
    invoke-virtual {v1, p1}, Lu/aly/az;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 534
    :cond_3
    invoke-virtual {p2}, Lu/aly/bb;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object p2, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/de;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 505
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->a(Lu/aly/cy;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 542
    check-cast p1, Lu/aly/de;

    .line 544
    new-instance v0, Lu/aly/cv;

    .line 546
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lu/aly/cv;-><init>(BBI)V

    .line 547
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lu/aly/cv;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/bb;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 548
    :goto_0
    iget v5, v0, Lu/aly/cv;->c:I

    if-ge v2, v5, :cond_0

    .line 551
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v5

    .line 552
    new-instance v6, Lu/aly/ba;

    invoke-direct {v6}, Lu/aly/ba;-><init>()V

    .line 553
    invoke-virtual {v6, p1}, Lu/aly/ba;->a(Lu/aly/cy;)V

    .line 554
    iget-object v7, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 557
    invoke-virtual {p2, v0}, Lu/aly/bb;->a(Z)V

    .line 558
    invoke-virtual {p1, v4}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 559
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    new-instance v4, Lu/aly/cu;

    .line 562
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lu/aly/cu;-><init>(BI)V

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    iget v5, v4, Lu/aly/cu;->b:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bb;->b:Ljava/util/List;

    .line 564
    :goto_1
    iget v3, v4, Lu/aly/cu;->b:I

    if-ge v1, v3, :cond_1

    .line 566
    new-instance v3, Lu/aly/az;

    invoke-direct {v3}, Lu/aly/az;-><init>()V

    .line 567
    invoke-virtual {v3, p1}, Lu/aly/az;->a(Lu/aly/cy;)V

    .line 568
    iget-object v5, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p2, v0}, Lu/aly/bb;->b(Z)V

    .line 573
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 575
    invoke-virtual {p2, v0}, Lu/aly/bb;->c(Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 505
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->b(Lu/aly/cy;Lu/aly/bb;)V

    return-void
.end method
