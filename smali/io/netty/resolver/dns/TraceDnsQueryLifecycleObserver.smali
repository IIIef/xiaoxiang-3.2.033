.class final Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;
.super Ljava/lang/Object;
.source "TraceDnsQueryLifecycleObserver.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsQueryLifecycleObserver;


# instance fields
.field private dnsServerAddress:Ljava/net/InetSocketAddress;

.field private final level:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final question:Lio/netty/handler/codec/dns/DnsQuestion;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/util/internal/logging/InternalLogger;Lio/netty/util/internal/logging/InternalLogLevel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "question"

    .line 36
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/dns/DnsQuestion;

    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    const-string p1, "logger"

    .line 37
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogger;

    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p1, "level"

    .line 38
    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogLevel;

    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method


# virtual methods
.method public queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 5

    .line 65
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "from {} : {} CNAME question {}"

    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public queryCancelled(I)V
    .locals 5

    .line 48
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "from {} : {} cancelled with {} queries remaining"

    .line 49
    invoke-interface {v1, v2, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "{} query never written and cancelled with {} queries remaining"

    .line 52
    invoke-interface {v0, v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public queryFailed(Ljava/lang/Throwable;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const-string p1, "from {} : {} failure"

    invoke-interface {v1, v2, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    const-string v3, "{} query never written and failed"

    invoke-interface {v0, v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 5

    .line 71
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "from {} : {} no answer {}"

    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;"
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    const-string v3, "from {} : {} redirected"

    invoke-interface {p1, v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public querySucceed()V
    .locals 0

    return-void
.end method

.method public queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    return-void
.end method
