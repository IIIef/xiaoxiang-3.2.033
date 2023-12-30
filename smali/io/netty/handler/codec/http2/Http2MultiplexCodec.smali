.class public Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.super Lio/netty/handler/codec/http2/Http2FrameCodec;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;,
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;,
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;,
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

.field private static final CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final MIN_HTTP2_FRAME_SIZE:I = 0x9

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field private idCount:I

.field private final inboundStreamHandler:Lio/netty/channel/ChannelHandler;

.field private initialOutboundStreamWindow:I

.field private parentReadInProgress:Z

.field private tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field private final upgradeStreamHandler:Lio/netty/channel/ChannelHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    const-class v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 112
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    .line 119
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 120
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-class v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    const-string v2, "write(...)"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ClosedChannelException;

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelHandler;Lio/netty/channel/ChannelHandler;Z)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2, p3, p6}, Lio/netty/handler/codec/http2/Http2FrameCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    const p1, 0xffff

    .line 154
    iput p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->initialOutboundStreamWindow:I

    .line 171
    iput-object p4, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    .line 172
    iput-object p5, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 108
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->registerDone(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$1400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    return p0
.end method

.method static synthetic access$1800(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->isChildChannelInReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000()Ljava/nio/channels/ClosedChannelException;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    return-object v0
.end method

.method static synthetic access$2500(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I
    .locals 0

    .line 108
    iget p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->initialOutboundStreamWindow:I

    return p0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->initialWritability(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$404(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I
    .locals 1

    .line 108
    iget v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    return v0
.end method

.method static synthetic access$500()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tryRemoveChildChannelFromReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    return-void
.end method

.method static synthetic access$900(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Lio/netty/channel/ChannelHandler;
    .locals 0

    .line 108
    iget-object p0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    return-object p0
.end method

.method private initialWritability(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z
    .locals 1

    .line 430
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->isWritable(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isChildChannelInReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z
    .locals 1

    .line 322
    iget-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-nez v0, :cond_1

    iget-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 1

    .line 365
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$2;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$2;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 377
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 378
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method private onHttp2UpgradeStreamInitialized(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;)V
    .locals 4

    .line 254
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V

    .line 255
    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 259
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    aput-object v3, v1, v2

    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 260
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 261
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->registerDone(Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 264
    :cond_0
    sget-object p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method private static registerDone(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    .line 193
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {p0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeChildChannelFromReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 2

    .line 349
    iget-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 350
    iget-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    goto :goto_0

    .line 353
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    :goto_0
    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v1, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    goto :goto_1

    .line 358
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    :goto_1
    const/4 v0, 0x0

    .line 360
    iput-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    return-void
.end method

.method private tryRemoveChildChannelFromReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 1

    .line 343
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->isChildChannelInReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->removeChildChannelFromReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final addChildChannelToReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-nez v0, :cond_0

    .line 334
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    goto :goto_0

    .line 336
    :cond_0
    iput-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 337
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object p1, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 338
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    :goto_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 401
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onChannelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 391
    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 393
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 395
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception v2

    .line 390
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 391
    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 393
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 394
    throw v2
.end method

.method final flush0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 208
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EventExecutor must be EventLoop of Channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 216
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 219
    iget-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 220
    iput-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    move-object p1, v1

    goto :goto_0

    .line 222
    :cond_0
    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->tail:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    return-void
.end method

.method final newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;
    .locals 3

    .line 306
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->newStream()Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V

    return-object v0
.end method

.method bridge synthetic newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->newStream()Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    move-result-object v0

    return-object v0
.end method

.method newStream()Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;
    .locals 1

    .line 227
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;-><init>()V

    return-object v0
.end method

.method final onChannelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    .line 408
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->head:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    :goto_0
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v1, 0x0

    .line 413
    iput-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->previous:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object v1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->next:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 414
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->fireChildReadComplete()V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 2

    .line 232
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v0, :cond_0

    .line 233
    check-cast p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 234
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V

    goto :goto_0

    .line 235
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_1

    .line 236
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    .line 238
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 239
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    if-eqz v0, :cond_3

    .line 240
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2SettingsFrame;->settings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->initialOutboundStreamWindow:I

    .line 245
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 248
    :cond_3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method final onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V
    .locals 1

    .line 311
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    .line 312
    check-cast p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 315
    :try_start_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    .line 318
    throw p2
.end method

.method final onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStream;)V
    .locals 2

    .line 270
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    .line 272
    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2FrameStream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p2

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-eqz p1, :cond_4

    .line 290
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->streamClosed()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p2, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V

    invoke-interface {p1, p2}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 281
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 282
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->registerDone(Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 284
    :cond_3
    sget-object p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_4
    :goto_0
    return-void
.end method

.method final onHttp2StreamWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStream;Z)V
    .locals 0

    .line 301
    check-cast p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    iget-object p1, p2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1, p3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writabilityChanged(Z)V

    return-void
.end method

.method public onHttpClientUpgrade()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttpClientUpgrade()V

    .line 184
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->newStream()Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 186
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2UpgradeStreamInitialized(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;)V

    return-void

    .line 179
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Client is misconfigured for upgrade requests"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method final tryAddChildChannelToReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 1

    .line 326
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->isChildChannelInReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->addChildChannelToReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    :cond_0
    return-void
.end method
