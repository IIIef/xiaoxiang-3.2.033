.class public final Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;
.super Lio/netty/channel/ChannelHandlerAdapter;
.source "CleartextHttp2ServerUpgradeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;,
        Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;


# instance fields
.field private final http2ServerHandler:Lio/netty/channel/ChannelHandler;

.field private final httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

.field private final httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lio/netty/handler/codec/http2/Http2CodecUtil;->connectionPrefaceBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler;Lio/netty/channel/ChannelHandler;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lio/netty/channel/ChannelHandlerAdapter;-><init>()V

    const-string v0, "httpServerCodec"

    .line 61
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpServerCodec;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    const-string p1, "httpServerUpgradeHandler"

    .line 62
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    const-string p1, "http2ServerHandler"

    .line 63
    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method static synthetic access$100()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 42
    sget-object v0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/handler/codec/http/HttpServerUpgradeHandler;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    return-object p0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/handler/codec/http/HttpServerCodec;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    return-object p0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;)Lio/netty/channel/ChannelHandler;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    return-object p0
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeHandler;-><init>(Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$1;)V

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 70
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {v0, p1, v3, v1}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    .line 71
    invoke-interface {p1, p0, v3, v0}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
