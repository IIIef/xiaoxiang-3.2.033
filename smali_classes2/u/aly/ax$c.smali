.class Lu/aly/ax$c;
.super Lu/aly/dj;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj<",
        "Lu/aly/ax;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ax$1;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Lu/aly/ax$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 587
    check-cast p1, Lu/aly/de;

    .line 588
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 590
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 591
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/util/Map;

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

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 593
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bj;

    invoke-virtual {v1, p1}, Lu/aly/bj;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-wide v0, p2, Lu/aly/ax;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 597
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 598
    invoke-virtual {p2}, Lu/aly/ax;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 599
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 601
    :cond_1
    invoke-virtual {p2}, Lu/aly/ax;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 604
    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 605
    invoke-virtual {p2}, Lu/aly/ax;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    iget-wide v0, p2, Lu/aly/ax;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 608
    :cond_3
    invoke-virtual {p2}, Lu/aly/ax;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 609
    iget p2, p2, Lu/aly/ax;->d:I

    invoke-virtual {p1, p2}, Lu/aly/de;->a(I)V

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

    .line 583
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$c;->a(Lu/aly/cy;Lu/aly/ax;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/ax;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 615
    check-cast p1, Lu/aly/de;

    .line 616
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 617
    invoke-virtual {p2, v0}, Lu/aly/ax;->a(Z)V

    .line 619
    new-instance v1, Lu/aly/cv;

    .line 621
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v3, v4, v2}, Lu/aly/cv;-><init>(BBI)V

    .line 622
    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lu/aly/cv;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lu/aly/ax;->b:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 623
    :goto_0
    iget v5, v1, Lu/aly/cv;->c:I

    if-ge v3, v5, :cond_0

    .line 626
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v5

    .line 627
    new-instance v6, Lu/aly/bj;

    invoke-direct {v6}, Lu/aly/bj;-><init>()V

    .line 628
    invoke-virtual {v6, p1}, Lu/aly/bj;->a(Lu/aly/cy;)V

    .line 629
    iget-object v7, p2, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p2, v0}, Lu/aly/ax;->b(Z)V

    .line 633
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v5

    iput-wide v5, p2, Lu/aly/ax;->e:J

    .line 634
    invoke-virtual {p2, v0}, Lu/aly/ax;->e(Z)V

    .line 635
    invoke-virtual {p1, v4}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 636
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ax;->c:J

    .line 638
    invoke-virtual {p2, v0}, Lu/aly/ax;->c(Z)V

    .line 640
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result p1

    iput p1, p2, Lu/aly/ax;->d:I

    .line 642
    invoke-virtual {p2, v0}, Lu/aly/ax;->d(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 583
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$c;->b(Lu/aly/cy;Lu/aly/ax;)V

    return-void
.end method
