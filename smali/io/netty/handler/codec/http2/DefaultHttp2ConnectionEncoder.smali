.class public Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;
.super Ljava/lang/Object;
.source "DefaultHttp2ConnectionEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
.implements Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;,
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;,
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
    }
.end annotation


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

.field private lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

.field private final outstandingLocalSettingsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingRemoteSettingsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    const-string v0, "connection"

    .line 54
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    const-string v0, "frameWriter"

    .line 55
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 56
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object p2

    if-nez p2, :cond_0

    .line 57
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p2

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    invoke-interface {p2, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    return-object p0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object p0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object p0
.end method

.method private notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 504
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 2

    .line 386
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream no longer exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private static validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object p1

    sget-object p2, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-nez p3, :cond_2

    .line 157
    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersSent()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->isTrailersSent()Z

    move-result p2

    if-nez p2, :cond_3

    return p1

    .line 158
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stream "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sent too many headers EOS: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 372
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameWriter;->close()V

    return-void
.end method

.method public configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;
    .locals 1

    .line 382
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameWriter;->configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method public consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    .line 404
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    return-object v0
.end method

.method public frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object v0
.end method

.method public lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
    .locals 1

    const-string v0, "lifecycleManager"

    .line 63
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2LifecycleManager;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    return-void
.end method

.method public pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 377
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method public remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;->headersConfiguration()Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;

    move-result-object v2

    .line 86
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;->frameSizePolicy()Lio/netty/handler/codec/http2/Http2FrameSizePolicy;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 88
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Client received a value of ENABLE_PUSH specified to other than 0"

    invoke-static {p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 92
    :cond_1
    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo(Z)V

    .line 95
    :cond_2
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams()Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v3, 0x7fffffff

    if-eqz v0, :cond_3

    .line 97
    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-interface {v5, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams(I)V

    .line 100
    :cond_3
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->headerTableSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;->maxHeaderTableSize(J)V

    .line 105
    :cond_4
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;->maxHeaderListSize(J)V

    .line 110
    :cond_5
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxFrameSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2FrameSizePolicy;->maxFrameSize(I)V

    .line 115
    :cond_6
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->initialWindowSize(I)V

    :cond_7
    return-void
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 8

    .line 126
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    .line 129
    sget-object p2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Stream "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " in unexpected state "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object p2

    new-instance v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, p1, v7}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V

    return-object p6

    :catchall_0
    move-exception p1

    .line 138
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 139
    invoke-interface {p6, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7

    .line 367
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeGoAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7

    .line 354
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v3, p2

    move/from16 v0, p8

    move-object/from16 v13, p9

    const/4 v14, 0x1

    .line 168
    :try_start_0
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1, v3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 176
    :try_start_1
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1
    :try_end_1
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    move-object v15, v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 178
    :try_start_2
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->mayHaveCreatedStream(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream no longer exists: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v13, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    return-object v13

    .line 182
    :cond_1
    throw v0

    .line 185
    :cond_2
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v14, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 187
    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->open(Z)Lio/netty/handler/codec/http2/Http2Stream;

    goto :goto_0

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v10

    if-eqz v0, :cond_5

    .line 202
    invoke-interface {v10, v15}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->hasFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 238
    :cond_4
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;

    const/4 v9, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v14, v10

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)V

    invoke-interface {v14, v15, v0}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V

    return-object v13

    .line 205
    :cond_5
    :goto_2
    invoke-interface/range {p9 .. p9}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v13

    .line 206
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    move-object/from16 v4, p3

    invoke-static {v15, v4, v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result v14

    .line 208
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v10, v13

    invoke-interface/range {v1 .. v10}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    .line 218
    invoke-interface {v15, v14}, Lio/netty/handler/codec/http2/Http2Stream;->headersSent(Z)Lio/netty/handler/codec/http2/Http2Stream;

    .line 220
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 222
    invoke-direct {v11, v1, v12}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_3

    .line 225
    :cond_6
    iget-object v3, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    const/4 v4, 0x1

    invoke-interface {v3, v12, v4, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 232
    iget-object v0, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v0, v15, v1}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamLocal(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    return-object v1

    :catchall_0
    move-exception v0

    .line 244
    iget-object v1, v11, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    const/4 v2, 0x1

    invoke-interface {v1, v12, v2, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 245
    invoke-interface {v13, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    return-object v13
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 10

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    .line 151
    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6

    .line 311
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writePriority(Lio/netty/channel/ChannelHandlerContext;IISZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7

    .line 253
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePriority(Lio/netty/channel/ChannelHandlerContext;IISZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 13

    move-object v1, p0

    move-object v9, p1

    const/4 v10, 0x1

    .line 318
    :try_start_0
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->goAwayReceived()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, p2

    .line 322
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v11

    .line 324
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    move/from16 v5, p3

    invoke-interface {v2, v5, v11}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 326
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 334
    invoke-interface {v11}, Lio/netty/handler/codec/http2/Http2Stream;->pushPromiseSent()Lio/netty/handler/codec/http2/Http2Stream;

    .line 336
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v3, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v3, p1, v10, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 319
    :cond_2
    :try_start_2
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Sending PUSH_PROMISE after GO_AWAY received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v12, p6

    .line 345
    :goto_1
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v2, p1, v10, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 346
    invoke-interface {v12, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    return-object v12
.end method

.method public writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6

    .line 260
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 268
    :try_start_0
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string p2, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 273
    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 281
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    .line 284
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    if-nez v0, :cond_1

    .line 286
    new-instance p1, Lio/netty/handler/codec/http2/Http2Exception;

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "attempted to write a SETTINGS ACK with no  pending SETTINGS"

    invoke-direct {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1

    .line 289
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 290
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .line 294
    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 298
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    .line 300
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 301
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 303
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 304
    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    const/4 v2, 0x1

    invoke-interface {p2, p1, v2, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 306
    :goto_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public writeWindowUpdate(Lio/netty/channel/ChannelHandlerContext;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 360
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use the Http2[Inbound|Outbound]FlowController objects to control window sizes"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method
