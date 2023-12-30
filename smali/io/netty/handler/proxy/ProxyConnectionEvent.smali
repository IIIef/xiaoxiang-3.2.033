.class public final Lio/netty/handler/proxy/ProxyConnectionEvent;
.super Ljava/lang/Object;
.source "ProxyConnectionEvent.java"


# instance fields
.field private final authScheme:Ljava/lang/String;

.field private final destinationAddress:Ljava/net/SocketAddress;

.field private final protocol:Ljava/lang/String;

.field private final proxyAddress:Ljava/net/SocketAddress;

.field private strVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "protocol"

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "authScheme"

    .line 40
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "proxyAddress"

    .line 43
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "destinationAddress"

    .line 46
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    .line 52
    iput-object p4, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public authScheme()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    return-object v0
.end method

.method public destinationAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public proxyAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->strVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->strVal:Ljava/lang/String;

    return-object v0
.end method
