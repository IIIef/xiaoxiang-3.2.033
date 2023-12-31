.class public final Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;
.super Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.source "JdkAlpnApplicationProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;,
        Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$FailureWrapper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALPN_WRAPPER:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

.field private static final AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->jdkAlpnSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-static {}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->AVAILABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;-><init>(Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$FailureWrapper;

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$FailureWrapper;-><init>(Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;)V

    :goto_2
    sput-object v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->ALPN_WRAPPER:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    sget-object v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->ALPN_WRAPPER:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;[Ljava/lang/String;)V
    .locals 1

    .line 115
    sget-object v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->ALPN_WRAPPER:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p1, p2}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZZLjava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 78
    sget-object p2, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->NO_FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    goto :goto_1

    :cond_1
    sget-object p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->NO_FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    :goto_1
    invoke-direct {p0, p2, p1, p3}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs constructor <init>(ZZ[Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 91
    sget-object p2, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->NO_FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    goto :goto_1

    :cond_1
    sget-object p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->NO_FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    :goto_1
    invoke-direct {p0, p2, p1, p3}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p1, p2}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZZ[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method

.method static jdkAlpnSupported()Z
    .locals 2

    .line 149
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lio/netty/handler/ssl/Java9SslUtils;->supportsAlpn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;
    .locals 1

    .line 28
    invoke-super {p0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;
    .locals 1

    .line 28
    invoke-super {p0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic protocols()Ljava/util/List;
    .locals 1

    .line 28
    invoke-super {p0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic wrapperFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    .locals 1

    .line 28
    invoke-super {p0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->wrapperFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    move-result-object v0

    return-object v0
.end method
