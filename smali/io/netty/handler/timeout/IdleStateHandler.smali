.class public Lio/netty/handler/timeout/IdleStateHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "IdleStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;,
        Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;,
        Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;,
        Lio/netty/handler/timeout/IdleStateHandler$AbstractIdleTask;
    }
.end annotation


# static fields
.field private static final MIN_TIMEOUT_NANOS:J


# instance fields
.field private final allIdleTimeNanos:J

.field private allIdleTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private firstAllIdleEvent:Z

.field private firstReaderIdleEvent:Z

.field private firstWriterIdleEvent:Z

.field private lastChangeCheckTimeStamp:J

.field private lastFlushProgress:J

.field private lastMessageHashCode:I

.field private lastPendingWriteBytes:J

.field private lastReadTime:J

.field private lastWriteTime:J

.field private final observeOutput:Z

.field private final readerIdleTimeNanos:J

.field private readerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private reading:Z

.field private state:B

.field private final writeListener:Lio/netty/channel/ChannelFutureListener;

.field private final writerIdleTimeNanos:J

.field private writerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/handler/timeout/IdleStateHandler;->MIN_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    .line 155
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(JJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JJJLjava/util/concurrent/TimeUnit;)V
    .locals 9

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 165
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(ZJJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(ZJJJLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 102
    new-instance v0, Lio/netty/handler/timeout/IdleStateHandler$1;

    invoke-direct {v0, p0}, Lio/netty/handler/timeout/IdleStateHandler$1;-><init>(Lio/netty/handler/timeout/IdleStateHandler;)V

    iput-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writeListener:Lio/netty/channel/ChannelFutureListener;

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstReaderIdleEvent:Z

    .line 121
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstWriterIdleEvent:Z

    .line 124
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstAllIdleEvent:Z

    const-string v0, "unit"

    .line 194
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    iput-boolean p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->observeOutput:Z

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    .line 200
    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p8, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    sget-wide v2, Lio/netty/handler/timeout/IdleStateHandler;->MIN_TIMEOUT_NANOS:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    :goto_0
    cmp-long p1, p4, v0

    if-gtz p1, :cond_1

    .line 205
    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p8, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    sget-wide p3, Lio/netty/handler/timeout/IdleStateHandler;->MIN_TIMEOUT_NANOS:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    :goto_1
    cmp-long p1, p6, v0

    if-gtz p1, :cond_2

    .line 210
    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    goto :goto_2

    .line 212
    :cond_2
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    sget-wide p3, Lio/netty/handler/timeout/IdleStateHandler;->MIN_TIMEOUT_NANOS:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/timeout/IdleStateHandler;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lio/netty/handler/timeout/IdleStateHandler;J)J
    .locals 0

    .line 98
    iput-wide p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lio/netty/handler/timeout/IdleStateHandler;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstWriterIdleEvent:Z

    return p0
.end method

.method static synthetic access$1000(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lio/netty/handler/timeout/IdleStateHandler;->hasOutputChanged(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lio/netty/handler/timeout/IdleStateHandler;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstWriterIdleEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lio/netty/handler/timeout/IdleStateHandler;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1202(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 98
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/handler/timeout/IdleStateHandler;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstAllIdleEvent:Z

    return p0
.end method

.method static synthetic access$202(Lio/netty/handler/timeout/IdleStateHandler;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstAllIdleEvent:Z

    return p1
.end method

.method static synthetic access$300(Lio/netty/handler/timeout/IdleStateHandler;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/netty/handler/timeout/IdleStateHandler;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lio/netty/handler/timeout/IdleStateHandler;->reading:Z

    return p0
.end method

.method static synthetic access$500(Lio/netty/handler/timeout/IdleStateHandler;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 98
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$700(Lio/netty/handler/timeout/IdleStateHandler;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstReaderIdleEvent:Z

    return p0
.end method

.method static synthetic access$702(Lio/netty/handler/timeout/IdleStateHandler;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstReaderIdleEvent:Z

    return p1
.end method

.method static synthetic access$800(Lio/netty/handler/timeout/IdleStateHandler;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$902(Lio/netty/handler/timeout/IdleStateHandler;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 98
    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private destroy()V
    .locals 3

    const/4 v0, 0x2

    .line 351
    iput-byte v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->state:B

    .line 353
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 355
    iput-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 357
    :cond_0
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 359
    iput-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 361
    :cond_1
    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 362
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 363
    iput-object v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private hasOutputChanged(Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 7

    .line 416
    iget-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->observeOutput:Z

    if-eqz v0, :cond_3

    .line 423
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastChangeCheckTimeStamp:J

    iget-wide v2, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 424
    iput-wide v2, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastChangeCheckTimeStamp:J

    if-nez p2, :cond_0

    return v4

    .line 432
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    .line 433
    invoke-interface {p1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    .line 434
    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 437
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 438
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingWriteBytes()J

    move-result-wide v1

    .line 440
    iget v3, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastMessageHashCode:I

    if-ne v0, v3, :cond_1

    iget-wide v5, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastPendingWriteBytes:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_2

    .line 441
    :cond_1
    iput v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastMessageHashCode:I

    .line 442
    iput-wide v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastPendingWriteBytes:J

    if-nez p2, :cond_2

    return v4

    .line 449
    :cond_2
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->currentProgress()J

    move-result-wide v0

    .line 450
    iget-wide v2, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastFlushProgress:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 451
    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastFlushProgress:J

    if-nez p2, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private initOutputChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    .line 395
    iget-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->observeOutput:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    .line 398
    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastMessageHashCode:I

    .line 402
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingWriteBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastPendingWriteBytes:J

    .line 403
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->currentProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastFlushProgress:J

    :cond_0
    return-void
.end method

.method private initialize(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 11

    .line 312
    iget-byte v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->state:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 318
    iput-byte v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->state:B

    .line 319
    invoke-direct {p0, p1}, Lio/netty/handler/timeout/IdleStateHandler;->initOutputChanged(Lio/netty/channel/ChannelHandlerContext;)V

    .line 321
    invoke-virtual {p0}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    .line 322
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 323
    new-instance v7, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;

    invoke-direct {v7, p0, p1}, Lio/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;-><init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget-wide v8, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 326
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 327
    new-instance v7, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;

    invoke-direct {v7, p0, p1}, Lio/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;-><init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget-wide v8, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 330
    :cond_1
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 331
    new-instance v7, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;

    invoke-direct {v7, p0, p1}, Lio/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;-><init>(Lio/netty/handler/timeout/IdleStateHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget-wide v8, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lio/netty/handler/timeout/IdleStateHandler;->initialize(Lio/netty/channel/ChannelHandlerContext;)V

    .line 272
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method protected channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lio/netty/handler/timeout/IdleStateHandler;->destroy()V

    .line 278
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->reading:Z

    .line 285
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstAllIdleEvent:Z

    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->firstReaderIdleEvent:Z

    .line 287
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->reading:Z

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lio/netty/handler/timeout/IdleStateHandler;->ticksInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->reading:Z

    .line 296
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lio/netty/handler/timeout/IdleStateHandler;->initialize(Lio/netty/channel/ChannelHandlerContext;)V

    .line 263
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public getAllIdleTimeInMillis()J
    .locals 3

    .line 237
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReaderIdleTimeInMillis()J
    .locals 3

    .line 221
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->readerIdleTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWriterIdleTimeInMillis()J
    .locals 3

    .line 229
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0, p1}, Lio/netty/handler/timeout/IdleStateHandler;->initialize(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lio/netty/handler/timeout/IdleStateHandler;->destroy()V

    return-void
.end method

.method protected newIdleStateEvent(Lio/netty/handler/timeout/IdleState;Z)Lio/netty/handler/timeout/IdleStateEvent;
    .locals 3

    .line 379
    sget-object v0, Lio/netty/handler/timeout/IdleStateHandler$2;->$SwitchMap$io$netty$handler$timeout$IdleState:[I

    invoke-virtual {p1}, Lio/netty/handler/timeout/IdleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 385
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    :goto_0
    return-object p1

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", first="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    .line 383
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    goto :goto_1

    :cond_3
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    :goto_1
    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 381
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    goto :goto_2

    :cond_5
    sget-object p1, Lio/netty/handler/timeout/IdleStateEvent;->ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    :goto_2
    return-object p1
.end method

.method schedule(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 347
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4, p5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method ticksInNanos()J
    .locals 2

    .line 340
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->writerIdleTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lio/netty/handler/timeout/IdleStateHandler;->allIdleTimeNanos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    iget-object p2, p0, Lio/netty/handler/timeout/IdleStateHandler;->writeListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_1
    return-void
.end method
