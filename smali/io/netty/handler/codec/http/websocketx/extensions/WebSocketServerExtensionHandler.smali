.class public Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "WebSocketServerExtensionHandler.java"


# instance fields
.field private final extensionHandshakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;",
            ">;"
        }
    .end annotation
.end field

.field private validExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "extensionHandshakers"

    .line 57
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extensionHandshakers must contains at least one handshaker"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 71
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->extractExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 80
    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    .line 87
    invoke-interface {v4, v2}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;->handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    move-result-object v4

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_0

    .line 90
    invoke-interface {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    if-nez v2, :cond_2

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    .line 94
    :cond_2
    invoke-interface {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v2

    or-int/2addr v1, v2

    .line 95
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_3
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 108
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    .line 113
    invoke-interface {v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->newReponseData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v3

    .line 114
    invoke-static {v1, v4, v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->appendExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 139
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
