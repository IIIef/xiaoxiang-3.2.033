.class public Lio/netty/resolver/dns/DnsNameResolver;
.super Lio/netty/resolver/InetNameResolver;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DECODER:Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;

.field private static final DEFAULT_NDOTS:I

.field static final DEFAULT_RESOLVE_ADDRESS_TYPES:Lio/netty/resolver/ResolvedAddressTypes;

.field static final DEFAULT_SEARCH_DOMAINS:[Ljava/lang/String;

.field private static final EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

.field private static final ENCODER:Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;

.field private static final IPV4_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

.field private static final IPV4_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final IPV4_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

.field private static final IPV4_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final IPV6_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

.field private static final IPV6_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final IPV6_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

.field private static final IPV6_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private static final LOCALHOST:Ljava/lang/String; = "localhost"

.field private static final LOCALHOST_ADDRESS:Ljava/net/InetAddress;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

.field final ch:Lio/netty/channel/Channel;

.field final channelFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final cnameCache:Lio/netty/resolver/dns/DnsCnameCache;

.field private final decodeIdn:Z

.field private final dnsQueryLifecycleObserverFactory:Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

.field private final dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

.field private final hostsFileEntriesResolver:Lio/netty/resolver/HostsFileEntriesResolver;

.field private final maxPayloadSize:I

.field private final maxQueriesPerResolve:I

.field private final nameServerAddrStream:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            ">;"
        }
    .end annotation
.end field

.field private final nameServerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ndots:I

.field private final optResourceEnabled:Z

.field private final preferredAddressType:Lio/netty/channel/socket/InternetProtocolFamily;

.field final queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

.field private final queryTimeoutMillis:J

.field private final recursionDesired:Z

.field private final resolveCache:Lio/netty/resolver/dns/DnsCache;

.field private final resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private final resolvedAddressTypes:Lio/netty/resolver/ResolvedAddressTypes;

.field private final resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

.field private final searchDomains:[Ljava/lang/String;

.field private final supportsAAAARecords:Z

.field private final supportsARecords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    const-class v0, Lio/netty/resolver/dns/DnsNameResolver;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/DnsNameResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x0

    new-array v1, v0, [Lio/netty/handler/codec/dns/DnsRecord;

    .line 92
    sput-object v1, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/netty/handler/codec/dns/DnsRecordType;

    .line 93
    sget-object v3, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v3, v2, v0

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    new-array v2, v1, [Lio/netty/channel/socket/InternetProtocolFamily;

    .line 95
    sget-object v3, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v3, v2, v0

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    const/4 v2, 0x2

    new-array v3, v2, [Lio/netty/handler/codec/dns/DnsRecordType;

    .line 97
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v4, v3, v0

    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v4, v3, v1

    sput-object v3, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    new-array v3, v2, [Lio/netty/channel/socket/InternetProtocolFamily;

    .line 99
    sget-object v4, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v4, v3, v0

    sget-object v4, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v4, v3, v1

    sput-object v3, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    new-array v3, v1, [Lio/netty/handler/codec/dns/DnsRecordType;

    .line 101
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v4, v3, v0

    sput-object v3, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    new-array v3, v1, [Lio/netty/channel/socket/InternetProtocolFamily;

    .line 103
    sget-object v4, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v4, v3, v0

    sput-object v3, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    new-array v3, v2, [Lio/netty/handler/codec/dns/DnsRecordType;

    .line 105
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v4, v3, v0

    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    aput-object v4, v3, v1

    sput-object v3, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    new-array v2, v2, [Lio/netty/channel/socket/InternetProtocolFamily;

    .line 107
    sget-object v3, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v3, v2, v0

    sget-object v3, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    aput-object v3, v2, v1

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    .line 115
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->anyInterfaceSupportsIpV6()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV6AddressesPreferred()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    sget-object v2, Lio/netty/resolver/ResolvedAddressTypes;->IPV6_PREFERRED:Lio/netty/resolver/ResolvedAddressTypes;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_RESOLVE_ADDRESS_TYPES:Lio/netty/resolver/ResolvedAddressTypes;

    .line 121
    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->LOCALHOST_ADDRESS:Ljava/net/InetAddress;

    goto :goto_1

    .line 123
    :cond_1
    sget-object v2, Lio/netty/resolver/ResolvedAddressTypes;->IPV4_PREFERRED:Lio/netty/resolver/ResolvedAddressTypes;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_RESOLVE_ADDRESS_TYPES:Lio/netty/resolver/ResolvedAddressTypes;

    .line 124
    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->LOCALHOST_ADDRESS:Ljava/net/InetAddress;

    goto :goto_1

    .line 116
    :cond_2
    :goto_0
    sget-object v2, Lio/netty/resolver/ResolvedAddressTypes;->IPV4_ONLY:Lio/netty/resolver/ResolvedAddressTypes;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_RESOLVE_ADDRESS_TYPES:Lio/netty/resolver/ResolvedAddressTypes;

    .line 117
    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    sput-object v2, Lio/netty/resolver/dns/DnsNameResolver;->LOCALHOST_ADDRESS:Ljava/net/InetAddress;

    .line 132
    :goto_1
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->getSearchDomainsHack()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 134
    :cond_3
    invoke-static {}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverSearchDomains()Ljava/util/List;

    move-result-object v2

    :goto_2
    new-array v0, v0, [Ljava/lang/String;

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 138
    :catch_0
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 140
    :goto_3
    sput-object v0, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_SEARCH_DOMAINS:[Ljava/lang/String;

    .line 144
    :try_start_1
    invoke-static {}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverFirstNdots()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :catch_1
    sput v1, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_NDOTS:I

    .line 185
    new-instance v0, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;

    invoke-direct {v0}, Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;-><init>()V

    sput-object v0, Lio/netty/resolver/dns/DnsNameResolver;->DECODER:Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;

    .line 186
    new-instance v0, Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;-><init>()V

    sput-object v0, Lio/netty/resolver/dns/DnsNameResolver;->ENCODER:Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoop;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/socket/DatagramChannel;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Lio/netty/resolver/dns/AuthoritativeDnsServerCache;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;",
            "J",
            "Lio/netty/resolver/ResolvedAddressTypes;",
            "ZIZIZ",
            "Lio/netty/resolver/HostsFileEntriesResolver;",
            "Lio/netty/resolver/dns/DnsServerAddressStreamProvider;",
            "[",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    .line 328
    sget-object v4, Lio/netty/resolver/dns/NoopDnsCnameCache;->INSTANCE:Lio/netty/resolver/dns/NoopDnsCnameCache;

    invoke-direct/range {v0 .. v19}, Lio/netty/resolver/dns/DnsNameResolver;-><init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoop;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/socket/DatagramChannel;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;",
            "J",
            "Lio/netty/resolver/ResolvedAddressTypes;",
            "ZIZIZ",
            "Lio/netty/resolver/HostsFileEntriesResolver;",
            "Lio/netty/resolver/dns/DnsServerAddressStreamProvider;",
            "[",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    .line 276
    new-instance v4, Lio/netty/resolver/dns/AuthoritativeDnsServerCacheAdapter;

    move-object/from16 p1, v4

    move-object/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v20

    invoke-direct {v1, v0}, Lio/netty/resolver/dns/AuthoritativeDnsServerCacheAdapter;-><init>(Lio/netty/resolver/dns/DnsCache;)V

    move-object/from16 v1, p1

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lio/netty/resolver/dns/DnsNameResolver;-><init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V

    return-void
.end method

.method constructor <init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoop;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/socket/DatagramChannel;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Lio/netty/resolver/dns/DnsCnameCache;",
            "Lio/netty/resolver/dns/AuthoritativeDnsServerCache;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;",
            "J",
            "Lio/netty/resolver/ResolvedAddressTypes;",
            "ZIZIZ",
            "Lio/netty/resolver/HostsFileEntriesResolver;",
            "Lio/netty/resolver/dns/DnsServerAddressStreamProvider;",
            "[",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move/from16 v6, p13

    .line 353
    invoke-direct {p0, p1}, Lio/netty/resolver/InetNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 196
    new-instance v7, Lio/netty/resolver/dns/DnsQueryContextManager;

    invoke-direct {v7}, Lio/netty/resolver/dns/DnsQueryContextManager;-><init>()V

    iput-object v7, v0, Lio/netty/resolver/dns/DnsNameResolver;->queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

    .line 205
    new-instance v7, Lio/netty/resolver/dns/DnsNameResolver$1;

    invoke-direct {v7, p0}, Lio/netty/resolver/dns/DnsNameResolver$1;-><init>(Lio/netty/resolver/dns/DnsNameResolver;)V

    iput-object v7, v0, Lio/netty/resolver/dns/DnsNameResolver;->nameServerAddrStream:Lio/netty/util/concurrent/FastThreadLocal;

    const-string v7, "queryTimeoutMillis"

    move-wide/from16 v8, p7

    .line 354
    invoke-static {v8, v9, v7}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lio/netty/resolver/dns/DnsNameResolver;->queryTimeoutMillis:J

    if-eqz v5, :cond_0

    move-object v7, v5

    goto :goto_0

    .line 355
    :cond_0
    sget-object v7, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_RESOLVE_ADDRESS_TYPES:Lio/netty/resolver/ResolvedAddressTypes;

    :goto_0
    iput-object v7, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedAddressTypes:Lio/netty/resolver/ResolvedAddressTypes;

    move/from16 v8, p10

    .line 356
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->recursionDesired:Z

    const-string v8, "maxQueriesPerResolve"

    move/from16 v9, p11

    .line 357
    invoke-static {v9, v8}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v8

    iput v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->maxQueriesPerResolve:I

    const-string v8, "maxPayloadSize"

    .line 358
    invoke-static {v6, v8}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v8

    iput v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->maxPayloadSize:I

    move/from16 v8, p14

    .line 359
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->optResourceEnabled:Z

    const-string v8, "hostsFileEntriesResolver"

    move-object/from16 v9, p15

    .line 360
    invoke-static {v9, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/resolver/HostsFileEntriesResolver;

    iput-object v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->hostsFileEntriesResolver:Lio/netty/resolver/HostsFileEntriesResolver;

    const-string v8, "dnsServerAddressStreamProvider"

    move-object/from16 v9, p16

    .line 362
    invoke-static {v9, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    iput-object v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    const-string v8, "resolveCache"

    .line 363
    invoke-static {p3, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/resolver/dns/DnsCache;

    iput-object v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    const-string v8, "cnameCache"

    .line 364
    invoke-static {p4, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/resolver/dns/DnsCnameCache;

    iput-object v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->cnameCache:Lio/netty/resolver/dns/DnsCnameCache;

    if-eqz p12, :cond_2

    .line 365
    instance-of v8, v4, Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserverFactory;

    if-eqz v8, :cond_1

    new-instance v4, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;

    invoke-direct {v4}, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v8, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserverFactory;

    new-instance v9, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;

    invoke-direct {v9}, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;-><init>()V

    invoke-direct {v8, v9, v4}, Lio/netty/resolver/dns/BiDnsQueryLifecycleObserverFactory;-><init>(Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;)V

    move-object v4, v8

    goto :goto_1

    :cond_2
    const-string v8, "dnsQueryLifecycleObserverFactory"

    .line 370
    invoke-static {v4, v8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

    :goto_1
    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->dnsQueryLifecycleObserverFactory:Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

    if-eqz p17, :cond_3

    .line 371
    invoke-virtual/range {p17 .. p17}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_SEARCH_DOMAINS:[Ljava/lang/String;

    :goto_2
    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->searchDomains:[Ljava/lang/String;

    if-ltz p18, :cond_4

    move/from16 v4, p18

    goto :goto_3

    .line 372
    :cond_4
    sget v4, Lio/netty/resolver/dns/DnsNameResolver;->DEFAULT_NDOTS:I

    :goto_3
    iput v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->ndots:I

    move/from16 v4, p19

    .line 373
    iput-boolean v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->decodeIdn:Z

    .line 375
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver$6;->$SwitchMap$io$netty$resolver$ResolvedAddressTypes:[I

    invoke-virtual {v7}, Lio/netty/resolver/ResolvedAddressTypes;->ordinal()I

    move-result v8

    aget v4, v4, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v4, v9, :cond_8

    const/4 v10, 0x2

    if-eq v4, v10, :cond_7

    const/4 v10, 0x3

    if-eq v4, v10, :cond_6

    const/4 v8, 0x4

    if-ne v4, v8, :cond_5

    .line 395
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords:Z

    .line 396
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords:Z

    .line 397
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 398
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_4

    .line 401
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ResolvedAddressTypes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_6
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords:Z

    .line 390
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords:Z

    .line 391
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 392
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV6_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_4

    .line 383
    :cond_7
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords:Z

    .line 384
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords:Z

    .line 385
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_PREFERRED_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 386
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_PREFERRED_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_4

    .line 377
    :cond_8
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords:Z

    .line 378
    iput-boolean v9, v0, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords:Z

    .line 379
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_ONLY_RESOLVED_RECORD_TYPES:[Lio/netty/handler/codec/dns/DnsRecordType;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 380
    sget-object v4, Lio/netty/resolver/dns/DnsNameResolver;->IPV4_ONLY_RESOLVED_PROTOCOL_FAMILIES:[Lio/netty/channel/socket/InternetProtocolFamily;

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    .line 403
    :goto_4
    invoke-static {v7}, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType(Lio/netty/resolver/ResolvedAddressTypes;)Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v4

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType:Lio/netty/channel/socket/InternetProtocolFamily;

    const-string v5, "authoritativeDnsServerCache"

    .line 404
    invoke-static {v3, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    iput-object v5, v0, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 405
    new-instance v5, Lio/netty/resolver/dns/NameServerComparator;

    invoke-virtual {v4}, Lio/netty/channel/socket/InternetProtocolFamily;->addressType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v5, v4}, Lio/netty/resolver/dns/NameServerComparator;-><init>(Ljava/lang/Class;)V

    iput-object v5, v0, Lio/netty/resolver/dns/DnsNameResolver;->nameServerComparator:Ljava/util/Comparator;

    .line 407
    new-instance v4, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v4}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    .line 408
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/netty/bootstrap/Bootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-object v5, p2

    .line 409
    invoke-virtual {v4, p2}, Lio/netty/bootstrap/Bootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 410
    sget-object v5, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 411
    new-instance v5, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/util/concurrent/Promise;)V

    .line 412
    new-instance v7, Lio/netty/resolver/dns/DnsNameResolver$2;

    invoke-direct {v7, p0, v5}, Lio/netty/resolver/dns/DnsNameResolver$2;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;)V

    invoke-virtual {v4, v7}, Lio/netty/bootstrap/Bootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 419
    invoke-static {v5}, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->access$300(Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;)Lio/netty/util/concurrent/Promise;

    move-result-object v5

    iput-object v5, v0, Lio/netty/resolver/dns/DnsNameResolver;->channelFuture:Lio/netty/util/concurrent/Future;

    .line 420
    invoke-virtual {v4}, Lio/netty/bootstrap/Bootstrap;->register()Lio/netty/channel/ChannelFuture;

    move-result-object v4

    .line 421
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 423
    instance-of v1, v5, Ljava/lang/RuntimeException;

    if-nez v1, :cond_a

    .line 426
    instance-of v1, v5, Ljava/lang/Error;

    if-eqz v1, :cond_9

    .line 427
    check-cast v5, Ljava/lang/Error;

    throw v5

    .line 429
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create / register Channel"

    invoke-direct {v1, v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 424
    :cond_a
    check-cast v5, Ljava/lang/RuntimeException;

    throw v5

    .line 431
    :cond_b
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    iput-object v4, v0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 432
    invoke-interface {v4}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-instance v7, Lio/netty/channel/FixedRecvByteBufAllocator;

    invoke-direct {v7, v6}, Lio/netty/channel/FixedRecvByteBufAllocator;-><init>(I)V

    invoke-interface {v5, v7}, Lio/netty/channel/ChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 434
    invoke-interface {v4}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lio/netty/resolver/dns/DnsNameResolver$3;

    invoke-direct {v5, p0, p3, p4, v3}, Lio/netty/resolver/dns/DnsNameResolver$3;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method static synthetic access$000(Lio/netty/resolver/dns/DnsNameResolver;)Lio/netty/resolver/dns/DnsServerAddressStreamProvider;
    .locals 0

    .line 87
    iget-object p0, p0, Lio/netty/resolver/dns/DnsNameResolver;->dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    return-object p0
.end method

.method static synthetic access$100()Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;
    .locals 1

    .line 87
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->DECODER:Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;

    return-object v0
.end method

.method static synthetic access$200()Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;
    .locals 1

    .line 87
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->ENCODER:Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lio/netty/resolver/dns/DnsNameResolver;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p5}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllUncached0(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    return-void
.end method

.method static synthetic access$600()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 87
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private static anyInterfaceSupportsIpV6()Z
    .locals 3

    .line 156
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 159
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lio/netty/resolver/dns/DnsNameResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unable to detect if any interface supports IPv6, assuming IPv4-only"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static cast(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;)",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    return-object p0
.end method

.method static doResolveAllCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;[Lio/netty/channel/socket/InternetProtocolFamily;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;",
            "Lio/netty/resolver/dns/DnsCache;",
            "[",
            "Lio/netty/channel/socket/InternetProtocolFamily;",
            ")Z"
        }
    .end annotation

    .line 966
    invoke-interface {p3, p0, p1}, Lio/netty/resolver/dns/DnsCache;->get(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_7

    .line 967
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 971
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/resolver/dns/DnsCacheEntry;

    invoke-interface {p3}, Lio/netty/resolver/dns/DnsCacheEntry;->cause()Ljava/lang/Throwable;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_6

    const/4 p3, 0x0

    .line 974
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 975
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    .line 977
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/resolver/dns/DnsCacheEntry;

    .line 978
    invoke-virtual {v4}, Lio/netty/channel/socket/InternetProtocolFamily;->addressType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez p3, :cond_1

    .line 980
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 982
    :cond_1
    invoke-interface {v6}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 987
    invoke-static {p2, p3}, Lio/netty/resolver/dns/DnsNameResolver;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V

    return v0

    :cond_5
    return p1

    .line 992
    :cond_6
    invoke-static {p2, p3}, Lio/netty/resolver/dns/DnsNameResolver;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return v0

    :cond_7
    :goto_2
    return p1
.end method

.method private doResolveAllUncached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Z)V"
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 1005
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    invoke-direct/range {p0 .. p5}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllUncached0(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    goto :goto_0

    .line 1008
    :cond_0
    new-instance v1, Lio/netty/resolver/dns/DnsNameResolver$5;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lio/netty/resolver/dns/DnsNameResolver$5;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private doResolveAllUncached0(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Z)V"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 1026
    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;->nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v5

    .line 1027
    new-instance v0, Lio/netty/resolver/dns/DnsAddressResolveContext;

    iget-object v7, p0, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsAddressResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Z)V

    .line 1028
    invoke-virtual {v0, p3}, Lio/netty/resolver/dns/DnsAddressResolveContext;->resolve(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method private doResolveCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            ")Z"
        }
    .end annotation

    .line 862
    invoke-interface {p4, p1, p2}, Lio/netty/resolver/dns/DnsCache;->get(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 863
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_2

    .line 867
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/netty/resolver/dns/DnsCacheEntry;

    invoke-interface {p4}, Lio/netty/resolver/dns/DnsCacheEntry;->cause()Ljava/lang/Throwable;

    move-result-object p4

    const/4 v0, 0x1

    if-nez p4, :cond_4

    .line 869
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    .line 871
    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p4, :cond_2

    .line 873
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/resolver/dns/DnsCacheEntry;

    .line 874
    invoke-virtual {v4}, Lio/netty/channel/socket/InternetProtocolFamily;->addressType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 875
    invoke-interface {v6}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p3, p1}, Lio/netty/resolver/dns/DnsNameResolver;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V

    return v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 882
    :cond_4
    invoke-static {p3, p4}, Lio/netty/resolver/dns/DnsNameResolver;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return v0

    :cond_5
    :goto_2
    return p2
.end method

.method private doResolveUncached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            "Z)V"
        }
    .end annotation

    .line 909
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object p5

    invoke-interface {p5}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object p5

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    .line 910
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllUncached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    .line 911
    new-instance p1, Lio/netty/resolver/dns/DnsNameResolver$4;

    invoke-direct {p1, p0, p3}, Lio/netty/resolver/dns/DnsNameResolver$4;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {p5, p1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method private static getSearchDomainsHack()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sun.net.dns.ResolverConfiguration"

    .line 177
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "open"

    .line 178
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "searchlist"

    .line 179
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 180
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static hostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1032
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 1034
    invoke-static {p0, v1}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isTimeoutError(Ljava/lang/Throwable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lio/netty/resolver/dns/DnsNameResolverTimeoutException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTransportOrTimeoutError(Ljava/lang/Throwable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lio/netty/resolver/dns/DnsNameResolverException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loopbackAddress()Ljava/net/InetAddress;
    .locals 1

    .line 822
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/socket/InternetProtocolFamily;->localhost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private nextNameServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1064
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->nameServerAddrStream:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/resolver/dns/DnsServerAddressStream;

    invoke-interface {v0}, Lio/netty/resolver/dns/DnsServerAddressStream;->next()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method static preferredAddressType(Lio/netty/resolver/ResolvedAddressTypes;)Lio/netty/channel/socket/InternetProtocolFamily;
    .locals 3

    .line 445
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver$6;->$SwitchMap$io$netty$resolver$ResolvedAddressTypes:[I

    invoke-virtual {p0}, Lio/netty/resolver/ResolvedAddressTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ResolvedAddressTypes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    :goto_0
    sget-object p0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    return-object p0

    .line 448
    :cond_2
    sget-object p0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    return-object p0
.end method

.method private resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;"
        }
    .end annotation

    const-string v0, "question"

    .line 752
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "promise"

    .line 753
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsQuestion;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v3

    .line 757
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsQuestion;->name()Ljava/lang/String;

    move-result-object v2

    .line 759
    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v3, v0, :cond_3

    .line 760
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/resolver/dns/DnsNameResolver;->resolveHostsFileEntry(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 763
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 764
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v3, v4, :cond_2

    .line 765
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 767
    :cond_1
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 768
    sget-object v4, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v3, v4, :cond_2

    .line 769
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_3

    .line 776
    new-instance p1, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;

    const-wide/32 v4, 0x15180

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;JLio/netty/buffer/ByteBuf;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3, p1}, Lio/netty/resolver/dns/DnsNameResolver;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V

    return-object p3

    .line 784
    :cond_3
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 785
    invoke-interface {v0, v2}, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;->nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v0

    .line 786
    new-instance v1, Lio/netty/resolver/dns/DnsRecordResolveContext;

    invoke-direct {v1, p0, p1, p2, v0}, Lio/netty/resolver/dns/DnsRecordResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)V

    invoke-virtual {v1, p3}, Lio/netty/resolver/dns/DnsRecordResolveContext;->resolve(Lio/netty/util/concurrent/Promise;)V

    return-object p3
.end method

.method private resolveHostsFileEntry(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 615
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->hostsFileEntriesResolver:Lio/netty/resolver/HostsFileEntriesResolver;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 618
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedAddressTypes:Lio/netty/resolver/ResolvedAddressTypes;

    invoke-interface {v0, p1, v1}, Lio/netty/resolver/HostsFileEntriesResolver;->address(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 619
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "localhost"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 623
    sget-object p1, Lio/netty/resolver/dns/DnsNameResolver;->LOCALHOST_ADDRESS:Ljava/net/InetAddress;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private static toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;Z)[",
            "Lio/netty/handler/codec/dns/DnsRecord;"
        }
    .end annotation

    const-string v0, "additionals"

    .line 791
    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 792
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 793
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 794
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/dns/DnsRecord;

    .line 795
    invoke-static {v1, p1}, Lio/netty/resolver/dns/DnsNameResolver;->validateAdditional(Lio/netty/handler/codec/dns/DnsRecord;Z)V

    goto :goto_0

    .line 797
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Lio/netty/handler/codec/dns/DnsRecord;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/netty/handler/codec/dns/DnsRecord;

    return-object p0

    .line 800
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 801
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 802
    sget-object p0, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    return-object p0

    .line 804
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/dns/DnsRecord;

    .line 807
    invoke-static {v1, p1}, Lio/netty/resolver/dns/DnsNameResolver;->validateAdditional(Lio/netty/handler/codec/dns/DnsRecord;Z)V

    .line 808
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 811
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lio/netty/handler/codec/dns/DnsRecord;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/netty/handler/codec/dns/DnsRecord;

    return-object p0
.end method

.method private static tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 897
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to notify failure to a promise: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 888
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to notify success ({}) to a promise: {}"

    invoke-interface {v0, v1, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static validateAdditional(Lio/netty/handler/codec/dns/DnsRecord;Z)V
    .locals 2

    const-string v0, "record"

    .line 815
    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 816
    instance-of p1, p0, Lio/netty/handler/codec/dns/DnsRawRecord;

    if-nez p1, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsRawRecord implementations not allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;
    .locals 1

    .line 507
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache:Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 604
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method

.method cnameCache()Lio/netty/resolver/dns/DnsCnameCache;
    .locals 1

    .line 500
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->cnameCache:Lio/netty/resolver/dns/DnsCnameCache;

    return-object v0
.end method

.method final dnsQueryLifecycleObserverFactory()Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;
    .locals 1

    .line 463
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->dnsQueryLifecycleObserverFactory:Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

    return-object v0
.end method

.method protected doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/netty/resolver/dns/DnsNameResolver;->doResolve(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V

    return-void
.end method

.method protected doResolve(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    invoke-static {p1}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 841
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 845
    :cond_1
    invoke-static {p1}, Lio/netty/resolver/dns/DnsNameResolver;->hostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-direct {p0, v1}, Lio/netty/resolver/dns/DnsNameResolver;->resolveHostsFileEntry(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 849
    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 853
    :cond_2
    invoke-direct {p0, v1, p2, p3, p4}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 854
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveUncached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    :cond_3
    return-void

    .line 835
    :cond_4
    :goto_0
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsNameResolver;->loopbackAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method protected doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 925
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAll(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V

    return-void
.end method

.method protected doResolveAll(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;",
            "Lio/netty/resolver/dns/DnsCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    invoke-static {p1}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 948
    :cond_1
    invoke-static {p1}, Lio/netty/resolver/dns/DnsNameResolver;->hostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-direct {p0, v1}, Lio/netty/resolver/dns/DnsNameResolver;->resolveHostsFileEntry(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 952
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 956
    :cond_2
    iget-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    invoke-static {v1, p2, p3, p4, p1}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;[Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 957
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllUncached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;Z)V

    :cond_3
    return-void

    .line 938
    :cond_4
    :goto_0
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsNameResolver;->loopbackAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method protected executor()Lio/netty/channel/EventLoop;
    .locals 1

    .line 611
    invoke-super {p0}, Lio/netty/resolver/InetNameResolver;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method protected bridge synthetic executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method final flushQueries()V
    .locals 1

    .line 1127
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->flush()Lio/netty/channel/Channel;

    return-void
.end method

.method public hostsFileEntriesResolver()Lio/netty/resolver/HostsFileEntriesResolver;
    .locals 1

    .line 594
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->hostsFileEntriesResolver:Lio/netty/resolver/HostsFileEntriesResolver;

    return-object v0
.end method

.method final isDecodeIdn()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->decodeIdn:Z

    return v0
.end method

.method public isOptResourceEnabled()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->optResourceEnabled:Z

    return v0
.end method

.method public isRecursionDesired()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->recursionDesired:Z

    return v0
.end method

.method public maxPayloadSize()I
    .locals 1

    .line 578
    iget v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->maxPayloadSize:I

    return v0
.end method

.method public maxQueriesPerResolve()I
    .locals 1

    .line 571
    iget v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->maxQueriesPerResolve:I

    return v0
.end method

.method final ndots()I
    .locals 1

    .line 535
    iget v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ndots:I

    return v0
.end method

.method final newNameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 1

    .line 1155
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->dnsServerAddressStreamProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;->nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1
.end method

.method protected newRedirectDnsServerStream(Ljava/lang/String;Ljava/util/List;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lio/netty/resolver/dns/DnsServerAddressStream;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/AuthoritativeDnsServerCache;->get(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 480
    invoke-interface {p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 483
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver;->nameServerComparator:Ljava/util/Comparator;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 484
    new-instance p1, Lio/netty/resolver/dns/SequentialDnsServerAddressStream;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/netty/resolver/dns/SequentialDnsServerAddressStream;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

.method newRedirectServerAddress(Ljava/net/InetAddress;)Ljava/net/InetSocketAddress;
    .locals 2

    .line 459
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x35

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method final preferredAddressType()Lio/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    .line 547
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->preferredAddressType:Lio/netty/channel/socket/InternetProtocolFamily;

    return-object v0
.end method

.method public query(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1044
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsNameResolver;->nextNameServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/resolver/dns/DnsNameResolver;->query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1060
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsNameResolver;->nextNameServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lio/netty/resolver/dns/DnsNameResolver;->query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1052
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsNameResolver;->nextNameServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/resolver/dns/DnsNameResolver;->query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1073
    sget-object v3, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 1074
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1073
    invoke-virtual/range {v0 .. v6}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1094
    sget-object v3, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1083
    invoke-static {p3, v0}, Lio/netty/resolver/dns/DnsNameResolver;->toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v4

    iget-object p3, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {p3}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    iget-object p3, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 1084
    invoke-interface {p3}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v7

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1083
    invoke-virtual/range {v1 .. v7}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1105
    invoke-static {p3, v0}, Lio/netty/resolver/dns/DnsNameResolver;->toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v4

    iget-object p3, p0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {p3}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method final query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Z",
            "Lio/netty/channel/ChannelPromise;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation

    const-string v0, "promise"

    .line 1139
    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lio/netty/util/concurrent/Promise;

    .line 1138
    invoke-static {p6}, Lio/netty/resolver/dns/DnsNameResolver;->cast(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Promise;

    move-result-object p6

    .line 1141
    :try_start_0
    new-instance v6, Lio/netty/resolver/dns/DnsQueryContext;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsQueryContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)V

    .line 1142
    invoke-virtual {v6, p4, p5}, Lio/netty/resolver/dns/DnsQueryContext;->query(ZLio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p6

    :catch_0
    move-exception p1

    .line 1145
    invoke-interface {p6, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public queryTimeoutMillis()J
    .locals 2

    .line 515
    iget-wide v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->queryTimeoutMillis:J

    return-wide v0
.end method

.method public final resolve(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->resolve(Ljava/lang/String;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Ljava/lang/String;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "promise"

    .line 652
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 653
    invoke-static {p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object p2

    .line 655
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/resolver/dns/DnsNameResolver;->doResolve(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 658
    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;"
        }
    .end annotation

    .line 712
    sget-object v0, Lio/netty/resolver/dns/DnsNameResolver;->EMPTY_ADDITIONALS:[Lio/netty/handler/codec/dns/DnsRecord;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/resolver/dns/DnsNameResolver;->resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;"
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 746
    invoke-static {p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object p2

    .line 747
    invoke-direct {p0, p1, p2, p3}, Lio/netty/resolver/dns/DnsNameResolver;->resolveAll(Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->resolveAll(Ljava/lang/String;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final resolveAll(Ljava/lang/String;Ljava/lang/Iterable;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation

    const-string v0, "promise"

    .line 685
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 686
    invoke-static {p2, v0}, Lio/netty/resolver/dns/DnsNameResolver;->toArray(Ljava/lang/Iterable;Z)[Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object p2

    .line 688
    :try_start_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAll(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 691
    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public resolveCache()Lio/netty/resolver/dns/DnsCache;
    .locals 1

    .line 493
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache:Lio/netty/resolver/dns/DnsCache;

    return-object v0
.end method

.method final resolveRecordTypes()[Lio/netty/handler/codec/dns/DnsRecordType;
    .locals 1

    .line 551
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolveRecordTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    return-object v0
.end method

.method public resolvedAddressTypes()Lio/netty/resolver/ResolvedAddressTypes;
    .locals 1

    .line 523
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedAddressTypes:Lio/netty/resolver/ResolvedAddressTypes;

    return-object v0
.end method

.method resolvedInternetProtocolFamiliesUnsafe()[Lio/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    .line 527
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamilies:[Lio/netty/channel/socket/InternetProtocolFamily;

    return-object v0
.end method

.method final searchDomains()[Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->searchDomains:[Ljava/lang/String;

    return-object v0
.end method

.method final supportsAAAARecords()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords:Z

    return v0
.end method

.method final supportsARecords()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords:Z

    return v0
.end method
