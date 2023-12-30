.class public Lio/netty/handler/flush/FlushConsolidationHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "FlushConsolidationHandler.java"


# static fields
.field public static final DEFAULT_EXPLICIT_FLUSH_AFTER_FLUSHES:I = 0x100


# instance fields
.field private final consolidateWhenNoReadInProgress:Z

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final explicitFlushAfterFlushes:I

.field private flushPendingCount:I

.field private final flushTask:Ljava/lang/Runnable;

.field private nextScheduledFlush:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private readInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v0, v1}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    if-lez p1, :cond_1

    .line 102
    iput p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    .line 103
    iput-boolean p2, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    if-eqz p2, :cond_0

    .line 104
    new-instance p1, Lio/netty/handler/flush/FlushConsolidationHandler$1;

    invoke-direct {p1, p0}, Lio/netty/handler/flush/FlushConsolidationHandler$1;-><init>(Lio/netty/handler/flush/FlushConsolidationHandler;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    return-void

    .line 99
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitFlushAfterFlushes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: > 0)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$000(Lio/netty/handler/flush/FlushConsolidationHandler;)I
    .locals 0

    .line 58
    iget p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return p0
.end method

.method static synthetic access$002(Lio/netty/handler/flush/FlushConsolidationHandler;I)I
    .locals 0

    .line 58
    iput p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return p1
.end method

.method static synthetic access$100(Lio/netty/handler/flush/FlushConsolidationHandler;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    return p0
.end method

.method static synthetic access$200(Lio/netty/handler/flush/FlushConsolidationHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method static synthetic access$302(Lio/netty/handler/flush/FlushConsolidationHandler;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 58
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method private cancelScheduledFlush()V
    .locals 2

    .line 217
    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 218
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 198
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    if-lez v0, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method private flushNow(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Lio/netty/handler/flush/FlushConsolidationHandler;->cancelScheduledFlush()V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    .line 206
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    .line 194
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 212
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lio/netty/channel/EventLoop;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    .line 154
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 148
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 184
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 175
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 168
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 161
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_3

    .line 129
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    if-eqz v0, :cond_2

    .line 133
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method
