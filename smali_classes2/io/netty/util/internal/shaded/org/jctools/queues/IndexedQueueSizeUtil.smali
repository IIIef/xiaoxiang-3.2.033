.class public final Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;
.super Ljava/lang/Object;
.source "IndexedQueueSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z
    .locals 4

    .line 60
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static size(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I
    .locals 7

    .line 29
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 34
    :goto_0
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 35
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    sub-long/2addr v2, v4

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    long-to-int p0, v2

    return p0

    :cond_1
    move-wide v0, v4

    goto :goto_0
.end method
