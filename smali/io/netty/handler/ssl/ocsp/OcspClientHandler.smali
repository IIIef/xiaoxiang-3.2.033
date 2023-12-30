.class public abstract Lio/netty/handler/ssl/ocsp/OcspClientHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "OcspClientHandler.java"


# static fields
.field private static final OCSP_VERIFICATION_EXCEPTION:Ljavax/net/ssl/SSLHandshakeException;


# instance fields
.field private final engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Bad OCSP response"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    const-class v1, Lio/netty/handler/ssl/ocsp/OcspClientHandler;

    const-string v2, "verify(...)"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    sput-object v0, Lio/netty/handler/ssl/ocsp/OcspClientHandler;->OCSP_VERIFICATION_EXCEPTION:Ljavax/net/ssl/SSLHandshakeException;

    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const-string v0, "engine"

    .line 44
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    iput-object p1, p0, Lio/netty/handler/ssl/ocsp/OcspClientHandler;->engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    return-void
.end method


# virtual methods
.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 57
    move-object v0, p2

    check-cast v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    .line 58
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ocsp/OcspClientHandler;->engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/ocsp/OcspClientHandler;->verify(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lio/netty/handler/ssl/ocsp/OcspClientHandler;->OCSP_VERIFICATION_EXCEPTION:Ljavax/net/ssl/SSLHandshakeException;

    throw p1

    .line 63
    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method protected abstract verify(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
