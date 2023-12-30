.class Lu/aly/bn$c;
.super Lu/aly/dj;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj<",
        "Lu/aly/bn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 761
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bn$1;)V
    .locals 0

    .line 761
    invoke-direct {p0}, Lu/aly/bn$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 766
    check-cast p1, Lu/aly/de;

    .line 767
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 768
    iget-wide v0, p2, Lu/aly/bn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 769
    iget-wide v0, p2, Lu/aly/bn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 770
    iget-wide v0, p2, Lu/aly/bn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 771
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 772
    invoke-virtual {p2}, Lu/aly/bn;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 773
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 775
    :cond_0
    invoke-virtual {p2}, Lu/aly/bn;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 776
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 778
    :cond_1
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 779
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x3

    .line 781
    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 782
    invoke-virtual {p2}, Lu/aly/bn;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 785
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bi;

    .line 786
    invoke-virtual {v1, p1}, Lu/aly/bi;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 790
    :cond_3
    invoke-virtual {p2}, Lu/aly/bn;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 793
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bg;

    .line 794
    invoke-virtual {v1, p1}, Lu/aly/bg;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 798
    :cond_4
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 799
    iget-object p2, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {p2, p1}, Lu/aly/bo;->b(Lu/aly/cy;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 761
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->a(Lu/aly/cy;Lu/aly/bn;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 806
    check-cast p1, Lu/aly/de;

    .line 807
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 808
    invoke-virtual {p2, v0}, Lu/aly/bn;->a(Z)V

    .line 809
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bn;->b:J

    .line 810
    invoke-virtual {p2, v0}, Lu/aly/bn;->b(Z)V

    .line 811
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bn;->c:J

    .line 812
    invoke-virtual {p2, v0}, Lu/aly/bn;->c(Z)V

    .line 813
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bn;->d:J

    .line 814
    invoke-virtual {p2, v0}, Lu/aly/bn;->d(Z)V

    const/4 v1, 0x3

    .line 815
    invoke-virtual {p1, v1}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 816
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_1

    .line 818
    new-instance v3, Lu/aly/cu;

    .line 819
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/cu;-><init>(BI)V

    .line 820
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lu/aly/cu;->b:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lu/aly/bn;->e:Ljava/util/List;

    const/4 v5, 0x0

    .line 821
    :goto_0
    iget v6, v3, Lu/aly/cu;->b:I

    if-ge v5, v6, :cond_0

    .line 823
    new-instance v6, Lu/aly/bi;

    invoke-direct {v6}, Lu/aly/bi;-><init>()V

    .line 824
    invoke-virtual {v6, p1}, Lu/aly/bi;->a(Lu/aly/cy;)V

    .line 825
    iget-object v7, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {p2, v0}, Lu/aly/bn;->e(Z)V

    .line 830
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 832
    new-instance v3, Lu/aly/cu;

    .line 833
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lu/aly/cu;-><init>(BI)V

    .line 834
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v3, Lu/aly/cu;->b:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p2, Lu/aly/bn;->f:Ljava/util/List;

    .line 835
    :goto_1
    iget v4, v3, Lu/aly/cu;->b:I

    if-ge v2, v4, :cond_2

    .line 837
    new-instance v4, Lu/aly/bg;

    invoke-direct {v4}, Lu/aly/bg;-><init>()V

    .line 838
    invoke-virtual {v4, p1}, Lu/aly/bg;->a(Lu/aly/cy;)V

    .line 839
    iget-object v5, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 842
    :cond_2
    invoke-virtual {p2, v0}, Lu/aly/bn;->f(Z)V

    :cond_3
    const/4 v2, 0x2

    .line 844
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 845
    new-instance v1, Lu/aly/bo;

    invoke-direct {v1}, Lu/aly/bo;-><init>()V

    iput-object v1, p2, Lu/aly/bn;->g:Lu/aly/bo;

    .line 846
    iget-object v1, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v1, p1}, Lu/aly/bo;->a(Lu/aly/cy;)V

    .line 847
    invoke-virtual {p2, v0}, Lu/aly/bn;->g(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 761
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->b(Lu/aly/cy;Lu/aly/bn;)V

    return-void
.end method
