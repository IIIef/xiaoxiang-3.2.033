.class public Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
.super Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
.source "Http2FrameCodecBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<",
        "Lio/netty/handler/codec/http2/Http2FrameCodec;",
        "Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->server(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    const-wide/16 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-void
.end method

.method public static forClient()Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 2

    .line 42
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static forServer()Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 2

    .line 49
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build()Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object p1

    return-object p1
.end method

.method public build()Lio/netty/handler/codec/http2/Http2FrameCodec;
    .locals 8

    .line 154
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    if-eqz v0, :cond_3

    .line 158
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isServer()Z

    move-result v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->maxReservedStreams()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;-><init>(ZI)V

    .line 159
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v1

    .line 160
    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    const/4 v4, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;

    invoke-direct {v1, v4}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v5, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v4, v6, v7}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJ)V

    move-object v1, v5

    :goto_0
    invoke-direct {v3, v1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>(Lio/netty/handler/codec/http2/Http2HeadersDecoder;)V

    .line 164
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    .line 166
    new-instance v0, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object v4, v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 168
    :goto_1
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-direct {v1, v2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    .line 169
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderEnforceMaxConcurrentStreams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    new-instance v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 172
    :goto_2
    new-instance v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 173
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->promisedRequestVerifier()Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isAutoAckSettingsFrame()Z

    move-result v6

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;Z)V

    .line 175
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v1

    invoke-virtual {p0, v7, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object v0

    return-object v0

    .line 177
    :cond_3
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-object v0
.end method

.method protected build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;
    .locals 2

    .line 183
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoupleCloseAndGoAway()Z

    move-result v1

    invoke-direct {v0, p2, p1, p3, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    .line 184
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->gracefulShutdownTimeoutMillis(J)V

    return-object v0
.end method

.method public bridge synthetic decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public bridge synthetic encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public encoderEnforceMaxConcurrentStreams()Z
    .locals 1

    .line 115
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public bridge synthetic frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;
    .locals 1

    .line 105
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    return-object v0
.end method

.method frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1

    const-string v0, "frameWriter"

    .line 54
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object p0
.end method

.method public gracefulShutdownTimeoutMillis()J
    .locals 2

    .line 70
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public bridge synthetic headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .locals 1

    .line 125
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public bridge synthetic initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public initialSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 60
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    return-object v0
.end method

.method public isServer()Z
    .locals 1

    .line 80
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer()Z

    move-result v0

    return v0
.end method

.method public isValidateHeaders()Z
    .locals 1

    .line 95
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isValidateHeaders()Z

    move-result v0

    return v0
.end method

.method public maxReservedStreams()I
    .locals 1

    .line 85
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams()I

    move-result v0

    return v0
.end method

.method public bridge synthetic maxReservedStreams(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->maxReservedStreams(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxReservedStreams(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method

.method public bridge synthetic validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public validateHeaders(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object p1
.end method
