.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
.source "MpscChunkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final maxQueueCapacity:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;-><init>(I)V

    const/4 v0, 0x4

    const-string v1, "maxCapacity"

    .line 31
    invoke-static {p2, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 32
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    invoke-static {p2}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 34
    invoke-static {p2}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    int-to-long p1, p1

    const/4 v0, 0x1

    shl-long/2addr p1, v0

    iput-wide p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;->maxQueueCapacity:J

    return-void
.end method
