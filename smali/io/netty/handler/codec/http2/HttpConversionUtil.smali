.class public final Lio/netty/handler/codec/http2/HttpConversionUtil;
.super Ljava/lang/Object;
.source "HttpConversionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;,
        Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;
    }
.end annotation


# static fields
.field private static final EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

.field private static final HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/util/AsciiString;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUT_OF_MESSAGE_SEQUENCE_METHOD:Lio/netty/handler/codec/http/HttpMethod;

.field public static final OUT_OF_MESSAGE_SEQUENCE_PATH:Ljava/lang/String; = ""

.field public static final OUT_OF_MESSAGE_SEQUENCE_RETURN_CODE:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 77
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 79
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    .line 80
    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 82
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->PROXY_CONNECTION:Lio/netty/util/AsciiString;

    .line 83
    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 84
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 85
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 86
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 87
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 88
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 89
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->PATH:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 96
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->OUT_OF_MESSAGE_SEQUENCE_METHOD:Lio/netty/handler/codec/http/HttpMethod;

    .line 108
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->OUT_OF_MESSAGE_SEQUENCE_RETURN_CODE:Lio/netty/handler/codec/http/HttpResponseStatus;

    const-string v0, "/"

    .line 114
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 342
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 343
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v4

    instance-of v6, p2, Lio/netty/handler/codec/http/HttpRequest;

    move v1, p0

    move-object v2, p1

    move v5, p3

    .line 341
    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    return-void
.end method

.method public static addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 361
    new-instance v0, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;

    invoke-direct {v0, p0, p2, p5}, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;-><init>(ILio/netty/handler/codec/http/HttpHeaders;Z)V

    .line 363
    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 364
    invoke-virtual {v0, p5}, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;->translate(Ljava/util/Map$Entry;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 372
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {p2, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 373
    sget-object p1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRAILER:Lio/netty/util/AsciiString;

    invoke-virtual {p2, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    if-nez p4, :cond_1

    .line 375
    sget-object p1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    const/4 p0, 0x1

    .line 376
    invoke-static {p2, p3, p0}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 369
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, p2, p1, p4, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 367
    throw p0
.end method

.method public static parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 187
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->parseLine(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    .line 188
    sget-object v3, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    if-eq v2, v3, :cond_0

    return-object v2

    .line 189
    :cond_0
    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v4, "Invalid HTTP/2 status code \'%d\'"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    .line 194
    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Unrecognized HTTP status code \'%s\' encountered in translation to HTTP/1.x"

    invoke-static {v3, v2, p0, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 192
    throw p0
.end method

.method static setHttp2Authority(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    sget-object p0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-interface {p1, p0}, Lio/netty/handler/codec/http2/Http2Headers;->authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 551
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 556
    new-instance v2, Lio/netty/util/AsciiString;

    invoke-direct {v2, p0, v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;II)V

    invoke-interface {p1, v2}, Lio/netty/handler/codec/http2/Http2Headers;->authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    .line 554
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private static setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Ljava/net/URI;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1

    .line 562
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    new-instance p0, Lio/netty/util/AsciiString;

    invoke-direct {p0, v0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, p0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    return-void

    .line 569
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 571
    invoke-static {p0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    return-void

    .line 575
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p0

    sget-object v0, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 576
    sget-object p0, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p0

    sget-object p1, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result p1

    if-ne p0, p1, :cond_3

    .line 578
    sget-object p0, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    :goto_0
    return-void

    .line 580
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ":scheme must be specified. see https://tools.ietf.org/html/rfc7540#section-8.1.2.3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "method header cannot be null in conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 252
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "path header cannot be null in conversion to HTTP/1.x"

    invoke-static {v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 254
    new-instance v8, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v3, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 255
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    .line 255
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v2, v8

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)V

    const/4 p2, 0x0

    .line 257
    :try_start_0
    invoke-static {p0, p1, v8, p2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v8

    :catchall_0
    move-exception p1

    .line 262
    invoke-interface {v8}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 263
    sget-object p3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, p3, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 259
    invoke-interface {v8}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 260
    throw p0
.end method

.method public static toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 219
    new-instance v1, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-interface {p2}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-direct {v1, v2, v0, p2, p3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    const/4 p2, 0x0

    .line 222
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 227
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 228
    sget-object p3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, p3, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 224
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 225
    throw p0
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object p0, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    return-object p0

    .line 419
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    .line 420
    invoke-static {p0, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V

    return-object v0
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3

    .line 390
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 391
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->size()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    .line 392
    instance-of p1, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz p1, :cond_2

    .line 393
    check-cast p0, Lio/netty/handler/codec/http/HttpRequest;

    .line 394
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Path(Ljava/net/URI;)Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2Headers;->path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 396
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpMethod;->asciiName()Lio/netty/util/AsciiString;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/netty/handler/codec/http2/Http2Headers;->method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 397
    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Ljava/net/URI;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 399
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isOriginForm(Ljava/net/URI;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isAsteriskForm(Ljava/net/URI;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 401
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Authority(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Headers;)V

    goto :goto_0

    .line 404
    :cond_2
    instance-of p1, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz p1, :cond_3

    .line 405
    check-cast p0, Lio/netty/handler/codec/http/HttpResponse;

    .line 406
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/netty/handler/codec/http2/Http2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 410
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V

    return-object v1
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 7

    .line 477
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v0

    .line 480
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    .line 481
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toLowercaseMap(Ljava/util/Iterator;I)Lio/netty/handler/codec/http2/CharSequenceMap;

    move-result-object p0

    .line 482
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 483
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v2

    .line 485
    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    invoke-static {v1, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2HeadersFilterTE(Ljava/util/Map$Entry;Lio/netty/handler/codec/http2/Http2Headers;)V

    goto :goto_0

    .line 489
    :cond_1
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    .line 494
    :try_start_0
    sget-object v2, Lio/netty/util/ByteProcessor;->FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;

    invoke-virtual {v1, v2}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 498
    :cond_2
    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v5, v2, v4}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    add-int/lit8 v5, v2, 0x2

    .line 501
    invoke-virtual {v1}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 502
    invoke-virtual {v1}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    sub-int/2addr v2, v5

    sget-object v6, Lio/netty/util/ByteProcessor;->FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;

    invoke-virtual {v1, v5, v2, v6}, Lio/netty/util/AsciiString;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 503
    :cond_3
    invoke-virtual {v1}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    if-ge v5, v2, :cond_4

    .line 506
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-virtual {v1}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3, v4}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto/16 :goto_0

    .line 504
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cookie value is of unexpected format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 508
    :cond_5
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-interface {p1, v2, v1}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 513
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 516
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static toHttp2HeadersFilterTE(Ljava/util/Map$Entry;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lio/netty/handler/codec/http2/Http2Headers;",
            ")V"
        }
    .end annotation

    .line 461
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 462
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-static {p0, v0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 463
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-interface {p1, p0, v0}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto :goto_0

    .line 466
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->unescapeCsvFields(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 467
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 468
    invoke-static {v0}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-static {v0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-interface {p1, p0, v0}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    :cond_2
    :goto_0
    return-void
.end method

.method private static toHttp2Path(Ljava/net/URI;)Lio/netty/util/AsciiString;
    .locals 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v1

    .line 528
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3f

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x23

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lio/netty/handler/codec/http2/HttpConversionUtil;->EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_3
    new-instance v0, Lio/netty/util/AsciiString;

    invoke-direct {v0, p0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 283
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "method header cannot be null in conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 285
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "path header cannot be null in conversion to HTTP/1.x"

    invoke-static {v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 287
    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v3, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    .line 288
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1, p2}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    .line 290
    :try_start_0
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 294
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, p2, p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 292
    throw p0
.end method

.method public static toHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 315
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 318
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-direct {v1, v2, v0, p2}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    .line 320
    :try_start_0
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 324
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, p2, p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 322
    throw p0
.end method

.method private static toLowercaseMap(Ljava/util/Iterator;I)Lio/netty/handler/codec/http2/CharSequenceMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;I)",
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/util/AsciiString;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lio/netty/handler/codec/UnsupportedValueConverter;->instance()Lio/netty/handler/codec/UnsupportedValueConverter;

    move-result-object v0

    .line 427
    new-instance v1, Lio/netty/handler/codec/http2/CharSequenceMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p1}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>(ZLio/netty/handler/codec/ValueConverter;I)V

    .line 429
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 430
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object p1

    .line 432
    :try_start_0
    sget-object v0, Lio/netty/util/ByteProcessor;->FIND_COMMA:Lio/netty/util/ByteProcessor;

    invoke-virtual {p1, v0}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 436
    :cond_0
    invoke-virtual {p1, v4, v0, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object v4

    sget-object v5, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4, v5}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    add-int/lit8 v4, v0, 0x1

    .line 438
    invoke-virtual {p1}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 439
    invoke-virtual {p1}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    sub-int/2addr v0, v4

    sget-object v5, Lio/netty/util/ByteProcessor;->FIND_COMMA:Lio/netty/util/ByteProcessor;

    invoke-virtual {p1, v4, v0, v5}, Lio/netty/util/AsciiString;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 440
    :cond_1
    invoke-virtual {p1}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-virtual {p1, v4, v0, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object p1

    sget-object v0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p1}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object p1

    sget-object v0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 447
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-object v1
.end method
