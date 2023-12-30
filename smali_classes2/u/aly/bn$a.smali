.class Lu/aly/bn$a;
.super Lu/aly/di;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di<",
        "Lu/aly/bn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 582
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bn$1;)V
    .locals 0

    .line 582
    invoke-direct {p0}, Lu/aly/bn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 589
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 590
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_3

    .line 676
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 680
    invoke-virtual {p2}, Lu/aly/bn;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 684
    invoke-virtual {p2}, Lu/aly/bn;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p2}, Lu/aly/bn;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p2}, Lu/aly/bn;->C()V

    return-void

    .line 689
    :cond_0
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_1
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 681
    :cond_2
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_3
    iget-short v1, v0, Lu/aly/ct;->c:S

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/16 v4, 0xa

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 672
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_3

    .line 663
    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 664
    new-instance v0, Lu/aly/bo;

    invoke-direct {v0}, Lu/aly/bo;-><init>()V

    iput-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    .line 665
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->a(Lu/aly/cy;)V

    .line 666
    invoke-virtual {p2, v5}, Lu/aly/bn;->g(Z)V

    goto/16 :goto_3

    .line 668
    :cond_4
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_3

    .line 645
    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_6

    .line 647
    invoke-virtual {p1}, Lu/aly/cy;->p()Lu/aly/cu;

    move-result-object v0

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/bn;->f:Ljava/util/List;

    .line 649
    :goto_1
    iget v1, v0, Lu/aly/cu;->b:I

    if-ge v2, v1, :cond_5

    .line 651
    new-instance v1, Lu/aly/bg;

    invoke-direct {v1}, Lu/aly/bg;-><init>()V

    .line 652
    invoke-virtual {v1, p1}, Lu/aly/bg;->a(Lu/aly/cy;)V

    .line 653
    iget-object v3, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    :cond_5
    invoke-virtual {p1}, Lu/aly/cy;->q()V

    .line 657
    invoke-virtual {p2, v5}, Lu/aly/bn;->f(Z)V

    goto/16 :goto_3

    .line 659
    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_3

    .line 627
    :pswitch_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_8

    .line 629
    invoke-virtual {p1}, Lu/aly/cy;->p()Lu/aly/cu;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/bn;->e:Ljava/util/List;

    .line 631
    :goto_2
    iget v1, v0, Lu/aly/cu;->b:I

    if-ge v2, v1, :cond_7

    .line 633
    new-instance v1, Lu/aly/bi;

    invoke-direct {v1}, Lu/aly/bi;-><init>()V

    .line 634
    invoke-virtual {v1, p1}, Lu/aly/bi;->a(Lu/aly/cy;)V

    .line 635
    iget-object v3, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 637
    :cond_7
    invoke-virtual {p1}, Lu/aly/cy;->q()V

    .line 639
    invoke-virtual {p2, v5}, Lu/aly/bn;->e(Z)V

    goto :goto_3

    .line 641
    :cond_8
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_3

    .line 619
    :pswitch_3
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_9

    .line 620
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bn;->d:J

    .line 621
    invoke-virtual {p2, v5}, Lu/aly/bn;->d(Z)V

    goto :goto_3

    .line 623
    :cond_9
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_3

    .line 611
    :pswitch_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_a

    .line 612
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bn;->c:J

    .line 613
    invoke-virtual {p2, v5}, Lu/aly/bn;->c(Z)V

    goto :goto_3

    .line 615
    :cond_a
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_3

    .line 603
    :pswitch_5
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_b

    .line 604
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bn;->b:J

    .line 605
    invoke-virtual {p2, v5}, Lu/aly/bn;->b(Z)V

    goto :goto_3

    .line 607
    :cond_b
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_3

    .line 595
    :pswitch_6
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    .line 596
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    .line 597
    invoke-virtual {p2, v5}, Lu/aly/bn;->a(Z)V

    goto :goto_3

    .line 599
    :cond_c
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 674
    :goto_3
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 582
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$a;->b(Lu/aly/cy;Lu/aly/bn;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 697
    invoke-virtual {p2}, Lu/aly/bn;->C()V

    .line 699
    invoke-static {}, Lu/aly/bn;->D()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 700
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lu/aly/bn;->E()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 702
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 705
    :cond_0
    invoke-static {}, Lu/aly/bn;->F()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 706
    iget-wide v0, p2, Lu/aly/bn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    .line 707
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 708
    invoke-static {}, Lu/aly/bn;->G()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 709
    iget-wide v0, p2, Lu/aly/bn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    .line 710
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 711
    invoke-static {}, Lu/aly/bn;->H()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 712
    iget-wide v0, p2, Lu/aly/bn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    .line 713
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 714
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    const/16 v1, 0xc

    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {p2}, Lu/aly/bn;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    invoke-static {}, Lu/aly/bn;->I()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 718
    new-instance v0, Lu/aly/cu;

    iget-object v2, p2, Lu/aly/bn;->e:Ljava/util/List;

    .line 719
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    .line 718
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cu;)V

    .line 720
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/bi;

    .line 721
    invoke-virtual {v2, p1}, Lu/aly/bi;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p1}, Lu/aly/cy;->f()V

    .line 725
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 728
    :cond_2
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 729
    invoke-virtual {p2}, Lu/aly/bn;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 730
    invoke-static {}, Lu/aly/bn;->J()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 732
    new-instance v0, Lu/aly/cu;

    iget-object v2, p2, Lu/aly/bn;->f:Ljava/util/List;

    .line 733
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/cu;-><init>(BI)V

    .line 732
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cu;)V

    .line 734
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bg;

    .line 735
    invoke-virtual {v1, p1}, Lu/aly/bg;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 737
    :cond_3
    invoke-virtual {p1}, Lu/aly/cy;->f()V

    .line 739
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 742
    :cond_4
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    if-eqz v0, :cond_5

    .line 743
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 744
    invoke-static {}, Lu/aly/bn;->K()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 745
    iget-object p2, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {p2, p1}, Lu/aly/bo;->b(Lu/aly/cy;)V

    .line 746
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 749
    :cond_5
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 750
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

    .line 582
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$a;->a(Lu/aly/cy;Lu/aly/bn;)V

    return-void
.end method
