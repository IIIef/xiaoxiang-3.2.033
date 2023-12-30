.class final Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;
.super Ljava/lang/Object;
.source "DnsResolveContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/resolver/dns/DnsResolveContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuthoritativeNameServerList"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

.field private nameServerCount:I

.field private final questionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1028
    const-class v0, Lio/netty/resolver/dns/DnsResolveContext;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->questionName:Ljava/lang/String;

    return-void
.end method

.method private static cache(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/channel/EventLoop;)V
    .locals 7

    .line 1183
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->isRootServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    invoke-static {p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1100(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1000(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1200(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)J

    move-result-wide v4

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lio/netty/resolver/dns/AuthoritativeDnsServerCache;->cache(Ljava/lang/String;Ljava/net/InetSocketAddress;JLio/netty/channel/EventLoop;)V

    :cond_0
    return-void
.end method

.method private static cacheUnresolved(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/channel/EventLoop;)V
    .locals 2

    .line 1174
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->nsName:Ljava/lang/String;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1002(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 1178
    invoke-static {p0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->cache(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/channel/EventLoop;)V

    return-void
.end method


# virtual methods
.method add(Lio/netty/handler/codec/dns/DnsRecord;)V
    .locals 9

    .line 1042
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->NS:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v0, v1, :cond_a

    instance-of v0, p1, Lio/netty/handler/codec/dns/DnsRawRecord;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1047
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->questionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    return-void

    .line 1051
    :cond_1
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->questionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_4

    .line 1055
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1056
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->questionName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_2

    return-void

    :cond_2
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1064
    :cond_4
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$900(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)I

    move-result v0

    if-le v0, v3, :cond_5

    return-void

    .line 1069
    :cond_5
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    return-void

    .line 1078
    :cond_6
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$900(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)I

    move-result v0

    if-ge v0, v3, :cond_7

    goto :goto_2

    .line 1081
    :cond_7
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$900(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1082
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1083
    :goto_1
    iget-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    if-eqz v1, :cond_8

    .line 1084
    iget-object v0, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    goto :goto_1

    .line 1086
    :cond_8
    new-instance v1, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v4

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1087
    iget p1, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    add-int/2addr p1, v8

    iput p1, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    goto :goto_3

    .line 1079
    :cond_9
    :goto_2
    iput v8, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    .line 1080
    new-instance v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    :cond_a
    :goto_3
    return-void
.end method

.method addressList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    :goto_0
    if-eqz v1, :cond_1

    .line 1203
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1000(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/net/InetSocketAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1204
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1000(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_0
    iget-object v1, v1, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method handleWithAdditional(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V
    .locals 4

    .line 1094
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1096
    invoke-interface {p2}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->isDecodeIdn()Z

    move-result v2

    invoke-static {p2, v1, v2}, Lio/netty/resolver/dns/DnsAddressDecoder;->decodeAddress(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1104
    iget-object v3, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->nsName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1105
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1000(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/net/InetSocketAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1108
    :goto_1
    iget-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    iget-boolean v1, v1, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->isCopy:Z

    if-eqz v1, :cond_1

    .line 1109
    iget-object v0, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    goto :goto_1

    .line 1111
    :cond_1
    new-instance v1, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    invoke-direct {v1, v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;-><init>(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)V

    .line 1112
    iget-object v3, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    iput-object v3, v1, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1113
    iput-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1116
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    move-object v0, v1

    .line 1120
    :cond_2
    invoke-virtual {p1, v2}, Lio/netty/resolver/dns/DnsNameResolver;->newRedirectServerAddress(Ljava/net/InetAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->update(Ljava/net/InetSocketAddress;J)V

    .line 1123
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-static {v0, p3, p1}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->cache(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/channel/EventLoop;)V

    return-void

    .line 1126
    :cond_3
    iget-object v0, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    goto :goto_0

    :cond_4
    return-void
.end method

.method handleWithoutAdditionals(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V
    .locals 7

    .line 1133
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->head:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    :goto_0
    if-eqz v0, :cond_1

    .line 1136
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->access$1000(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)Ljava/net/InetSocketAddress;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1138
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->cacheUnresolved(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/channel/EventLoop;)V

    .line 1142
    iget-object v1, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->nsName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lio/netty/resolver/dns/DnsCache;->get(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/resolver/dns/DnsCacheEntry;

    invoke-interface {v2}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-virtual {p1, v2}, Lio/netty/resolver/dns/DnsNameResolver;->newRedirectServerAddress(Ljava/net/InetAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->update(Ljava/net/InetSocketAddress;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1150
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1151
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/resolver/dns/DnsCacheEntry;

    invoke-interface {v4}, Lio/netty/resolver/dns/DnsCacheEntry;->address()Ljava/net/InetAddress;

    move-result-object v4

    .line 1156
    new-instance v5, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    invoke-direct {v5, v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;-><init>(Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;)V

    .line 1157
    iget-object v6, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    iput-object v6, v5, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1158
    iput-object v5, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    .line 1160
    invoke-virtual {p1, v4}, Lio/netty/resolver/dns/DnsNameResolver;->newRedirectServerAddress(Ljava/net/InetAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->update(Ljava/net/InetSocketAddress;)V

    .line 1162
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    add-int/lit8 v3, v3, 0x1

    move-object v0, v5

    goto :goto_1

    .line 1167
    :cond_0
    iget-object v0, v0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;->next:Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1192
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->nameServerCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
