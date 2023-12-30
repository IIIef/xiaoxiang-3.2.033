.class public Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;
.super Ljava/lang/Object;
.source "DefaultHttp2HeadersDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersDecoder;
.implements Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;


# static fields
.field private static final HEADERS_COUNT_WEIGHT_HISTORICAL:F = 0.8f

.field private static final HEADERS_COUNT_WEIGHT_NEW:F = 0.2f


# instance fields
.field private headerArraySizeAccumulator:F

.field private final hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

.field private maxHeaderListSizeGoAway:J

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const-wide/16 v0, 0x2000

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 1

    const/16 v0, 0x20

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJI)V

    return-void
.end method

.method public constructor <init>(ZJI)V
    .locals 1

    .line 74
    new-instance v0, Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-direct {v0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZLio/netty/handler/codec/http2/HpackDecoder;)V

    return-void
.end method

.method constructor <init>(ZLio/netty/handler/codec/http2/HpackDecoder;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    .line 41
    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    const-string v0, "hpackDecoder"

    .line 82
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HpackDecoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    .line 83
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    .line 85
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderListSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->calculateMaxHeaderListSizeGoAway(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    return-void
.end method


# virtual methods
.method public configuration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;
    .locals 0

    return-object p0
.end method

.method public decodeHeaders(ILio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->newHeaders()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    invoke-virtual {v1, p1, p2, v0, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->decode(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Z)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 128
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->size()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    const p1, 0x3f4ccccd    # 0.8f

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 137
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 132
    throw p1
.end method

.method public maxHeaderListSize()J
    .locals 2

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderListSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderListSize(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 104
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderListSize(J)V

    .line 105
    iput-wide p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    return-void

    .line 101
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 102
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "Header List Size GO_AWAY %d must be non-negative and >= %d"

    .line 101
    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public maxHeaderListSizeGoAway()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    return-wide v0
.end method

.method public maxHeaderTableSize()J
    .locals 2

    .line 95
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderTableSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderTableSize(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderTableSize(J)V

    return-void
.end method

.method protected newHeaders()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3

    .line 162
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    return-object v0
.end method

.method protected final numberOfHeadersGuess()I
    .locals 1

    .line 146
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    float-to-int v0, v0

    return v0
.end method

.method protected final validateHeaders()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    return v0
.end method
