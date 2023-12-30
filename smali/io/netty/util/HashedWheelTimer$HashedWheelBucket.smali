.class final Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashedWheelBucket"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

.field private tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 725
    const-class v0, Lio/netty/util/HashedWheelTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/HashedWheelTimer$1;)V
    .locals 0

    .line 725
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;-><init>()V

    return-void
.end method

.method private pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3

    .line 819
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 823
    :cond_0
    iget-object v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-nez v2, :cond_1

    .line 825
    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 827
    :cond_1
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 828
    iput-object v1, v2, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 832
    :goto_0
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 833
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 834
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    return-object v0
.end method


# virtual methods
.method public addTimeout(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)V
    .locals 1

    .line 735
    iput-object p0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 736
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-nez v0, :cond_0

    .line 737
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 740
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 741
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    :goto_0
    return-void
.end method

.method public clearTimeouts(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/netty/util/Timeout;",
            ">;)V"
        }
    .end annotation

    .line 807
    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 811
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 814
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public expireTimeouts(J)V
    .locals 7

    .line 749
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    :goto_0
    if-eqz v0, :cond_3

    .line 753
    iget-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 754
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 755
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v1

    .line 756
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    .line 757
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    goto :goto_1

    .line 760
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 761
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "timeout.deadline (%d) > deadline (%d)"

    .line 760
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_2
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3

    .line 773
    iget-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 775
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 778
    :cond_0
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iget-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v2, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 782
    :cond_1
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 784
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_2

    .line 785
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 786
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 788
    :cond_2
    iput-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 790
    :cond_3
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_4

    .line 792
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 795
    :cond_4
    :goto_0
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 796
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 797
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 798
    invoke-static {p1}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$1200(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer;

    move-result-object p1

    invoke-static {p1}, Lio/netty/util/HashedWheelTimer;->access$1100(Lio/netty/util/HashedWheelTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-object v0
.end method
