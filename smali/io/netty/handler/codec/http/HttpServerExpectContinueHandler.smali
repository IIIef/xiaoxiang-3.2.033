.class public Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "HttpServerExpectContinueHandler.java"


# static fields
.field private static final ACCEPT:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 52
    new-instance v1, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v3, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v1, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->ACCEPT:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 56
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 57
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected acceptMessage(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 65
    sget-object p1, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->ACCEPT:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 80
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->acceptMessage(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->rejectResponse(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/HttpResponse;

    move-result-object v0

    .line 86
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    sget-object p2, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    .line 91
    :cond_0
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 92
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 95
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method protected rejectResponse(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 72
    sget-object p1, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method
