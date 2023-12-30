.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;
.super Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.source "ConscryptAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerEngine"
.end annotation


# instance fields
.field private final protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
    .locals 2

    .line 130
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;)V

    .line 133
    new-instance p2, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine$1;

    invoke-direct {p2, p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine$1;-><init>(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;)V

    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/HandshakeListener;)V

    .line 140
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    .line 142
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-interface {p1, p0, p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;->newSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    move-result-object p1

    const-string p2, "protocolSelector"

    .line 140
    invoke-static {p1, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->selectProtocol()V

    return-void
.end method

.method private selectProtocol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 149
    :goto_0
    invoke-interface {v1, v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0
.end method
