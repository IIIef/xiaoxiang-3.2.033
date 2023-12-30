.class public final Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;
.super Ljava/lang/Object;
.source "BiDnsQueryLifecycleObserver.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsQueryLifecycleObserver;


# instance fields
.field private final a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

.field private final b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;


# direct methods
.method public constructor <init>(Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a"

    .line 42
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    iput-object p1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    const-string p1, "b"

    .line 43
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    iput-object p1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    return-void
.end method


# virtual methods
.method public queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 80
    throw v0
.end method

.method public queryCancelled(I)V
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    .line 61
    throw v0
.end method

.method public queryFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 100
    throw v0
.end method

.method public queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 90
    throw v0
.end method

.method public queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;"
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 70
    throw v0
.end method

.method public querySucceed()V
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    .line 109
    throw v0
.end method

.method public queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->a:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1, p2}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v0, p1, p2}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserver;->b:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    invoke-interface {v1, p1, p2}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V

    .line 52
    throw v0
.end method
