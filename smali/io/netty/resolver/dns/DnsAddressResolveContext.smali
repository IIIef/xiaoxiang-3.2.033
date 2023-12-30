.class final Lio/netty/resolver/dns/DnsAddressResolveContext;
.super Lio/netty/resolver/dns/DnsResolveContext;
.source "DnsAddressResolveContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/dns/DnsResolveContext<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private final authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

.field private final completeEarlyIfPossible:Z

.field private final resolveCache:Lio/netty/resolver/dns/DnsCache;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Z)V
    .locals 7

    .line 40
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes()[Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v4

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)V

    .line 41
    iput-object p5, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    .line 42
    iput-object p6, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 43
    iput-boolean p7, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->completeEarlyIfPossible:Z

    return-void
.end method


# virtual methods
.method authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    return-object v0
.end method

.method bridge synthetic cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p4, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/resolver/dns/DnsAddressResolveContext;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/InetAddress;)V

    return-void
.end method

.method cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/InetAddress;)V
    .locals 7

    .line 74
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    invoke-interface {p3}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v4

    iget-object p3, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object p3, p3, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {p3}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-interface/range {v0 .. v6}, Lio/netty/resolver/dns/DnsCache;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/InetAddress;JLio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;

    return-void
.end method

.method cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/UnknownHostException;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    iget-object v1, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v1, v1, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lio/netty/resolver/dns/DnsCache;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Throwable;Lio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;

    return-void
.end method

.method bridge synthetic convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/resolver/dns/DnsAddressResolveContext;->convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/net/InetAddress;
    .locals 0

    .line 57
    iget-object p3, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {p3}, Lio/netty/resolver/dns/DnsNameResolver;->isDecodeIdn()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lio/netty/resolver/dns/DnsAddressDecoder;->decodeAddress(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v1, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    iget-object v2, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 86
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamiliesUnsafe()[Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v2

    .line 85
    invoke-static {p1, v0, p2, v1, v2}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;[Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext;->doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    :cond_0
    return-void
.end method

.method filterResults(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/dns/PreferredAddressTypeComparator;->comparator(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/resolver/dns/PreferredAddressTypeComparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method bridge synthetic isCompleteEarly(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lio/netty/resolver/dns/DnsAddressResolveContext;->isCompleteEarly(Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method

.method isCompleteEarly(Ljava/net/InetAddress;)Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->completeEarlyIfPossible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/socket/InternetProtocolFamily;->addressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method newResolverContext(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)Lio/netty/resolver/dns/DnsResolveContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsNameResolver;",
            "Ljava/lang/String;",
            "I[",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            ")",
            "Lio/netty/resolver/dns/DnsResolveContext<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p3, Lio/netty/resolver/dns/DnsAddressResolveContext;

    iget-object v5, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    iget-object v6, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    iget-boolean v7, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->completeEarlyIfPossible:Z

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsAddressResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Z)V

    return-object p3
.end method

.method resolveCache()Lio/netty/resolver/dns/DnsCache;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    return-object v0
.end method
