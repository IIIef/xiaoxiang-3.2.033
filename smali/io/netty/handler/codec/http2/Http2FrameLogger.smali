.class public Lio/netty/handler/codec/http2/Http2FrameLogger;
.super Lio/netty/channel/ChannelHandlerAdapter;
.source "Http2FrameLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH_THRESHOLD:I = 0x40


# instance fields
.field private final level:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public constructor <init>(Lio/netty/handler/logging/LogLevel;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    const-class v0, Lio/netty/handler/codec/http2/Http2FrameLogger;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/logging/LogLevel;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    invoke-static {p2}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    invoke-static {p2}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lio/netty/channel/ChannelHandlerAdapter;-><init>()V

    const-string v0, "level"

    .line 58
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogLevel;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string p1, "logger"

    .line 59
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogger;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    sget-object v1, Lio/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p1, v2, v0}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public logData(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-direct {p0, p4}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} DATA: streamId={} padding={} endStream={} length={} bytes={}"

    .line 69
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logGoAway(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 142
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-direct {p0, p6}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} GO_AWAY: lastStreamId={} errorCode={} length={} bytes={}"

    .line 141
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logHeaders(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 4

    .line 84
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 86
    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/16 p1, 0x8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} HEADERS: streamId={} headers={} streamDependency={} weight={} exclusive={} padding={} endStream={}"

    .line 85
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logHeaders(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} HEADERS: streamId={} headers={} padding={} endStream={}"

    .line 77
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logPing(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PING: ack=false bytes={}"

    .line 118
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logPingAck(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PING: ack=true bytes={}"

    .line 125
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logPriority(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PRIORITY: streamId={} streamDependency={} weight={} exclusive={}"

    .line 94
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logPushPromise(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 134
    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PUSH_PROMISE: streamId={} promisedStreamId={} headers={} padding={}"

    .line 133
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logRstStream(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 102
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} RST_STREAM: streamId={} errorCode={}"

    .line 101
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logSettings(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "{} {} SETTINGS: ack=false settings={}"

    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logSettingsAck(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} {} SETTINGS: ack=true"

    invoke-interface {v0, v1, v2, p2, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public logUnknownFrame(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 4

    .line 156
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 158
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    and-int/lit16 p2, p3, 0xff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-virtual {p5}, Lio/netty/handler/codec/http2/Http2Flags;->value()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-direct {p0, p6}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} UNKNOWN: frameType={} streamId={} flags={} length={} bytes={}"

    .line 157
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logWindowsUpdate(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 150
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} WINDOW_UPDATE: streamId={} windowSizeIncrement={}"

    .line 149
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
