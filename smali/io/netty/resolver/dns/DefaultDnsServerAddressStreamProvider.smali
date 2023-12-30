.class public final Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "DefaultDnsServerAddressStreamProvider.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# static fields
.field private static final DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

.field private static final DEFAULT_NAME_SERVER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field static final DNS_PORT:I = 0x35

.field public static final INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    const-class v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 43
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 44
    new-instance v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    invoke-direct {v0}, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;-><init>()V

    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v2

    const/16 v3, 0x35

    if-nez v2, :cond_0

    .line 55
    invoke-static {v0, v3}, Lio/netty/resolver/dns/DirContextUtils;->addNameServers(Ljava/util/List;I)V

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "sun.net.dns.ResolverConfiguration"

    .line 60
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "open"

    new-array v6, v4, [Ljava/lang/Class;

    .line 61
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "nameservers"

    new-array v7, v4, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 69
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {v5}, Lio/netty/util/internal/SocketUtils;->addressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 78
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    sget-object v1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Default DNS servers: {} (sun.net.dns.ResolverConfiguration)"

    .line 80
    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 87
    :cond_3
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV6AddressesPreferred()Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_5

    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    .line 88
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-array v1, v1, [Ljava/net/InetSocketAddress;

    const-string v2, "8.8.8.8"

    .line 96
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "8.8.4.4"

    .line 97
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    aput-object v2, v1, v5

    .line 94
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    new-array v1, v1, [Ljava/net/InetSocketAddress;

    const-string v2, "2001:4860:4860::8888"

    .line 91
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "2001:4860:4860::8844"

    .line 92
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    aput-object v2, v1, v5

    .line 89
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 100
    :goto_2
    sget-object v1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Default DNS servers: {} (Google Public DNS as a fallback)"

    .line 101
    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_6
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVER_LIST:Ljava/util/List;

    .line 107
    invoke-static {v0}, Lio/netty/resolver/dns/DnsServerAddresses;->sequential(Ljava/lang/Iterable;)Lio/netty/resolver/dns/DnsServerAddresses;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVER_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static defaultAddresses()Lio/netty/resolver/dns/DnsServerAddresses;
    .locals 1

    .line 139
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    return-object v0
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 0

    .line 115
    sget-object p1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1
.end method
