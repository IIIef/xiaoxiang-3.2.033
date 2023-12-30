.class public Lio/netty/resolver/dns/DefaultDnsCache;
.super Ljava/lang/Object;
.source "DefaultDnsCache.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;
    }
.end annotation


# instance fields
.field private final maxTtl:I

.field private final minTtl:I

.field private final negativeTtl:I

.field private final resolveCache:Lio/netty/resolver/dns/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/dns/Cache<",
            "Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    sget v0, Lio/netty/resolver/dns/Cache;->MAX_SUPPORTED_TTL_SECS:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lio/netty/resolver/dns/DefaultDnsCache;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/netty/resolver/dns/DefaultDnsCache$1;

    invoke-direct {v0, p0}, Lio/netty/resolver/dns/DefaultDnsCache$1;-><init>(Lio/netty/resolver/dns/DefaultDnsCache;)V

    iput-object v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 76
    sget v0, Lio/netty/resolver/dns/Cache;->MAX_SUPPORTED_TTL_SECS:I

    const-string v1, "minTtl"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->minTtl:I

    .line 77
    sget v0, Lio/netty/resolver/dns/Cache;->MAX_SUPPORTED_TTL_SECS:I

    const-string v1, "maxTtl"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->maxTtl:I

    if-gt p1, p2, :cond_0

    const-string p1, "negativeTtl"

    .line 82
    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->negativeTtl:I

    return-void

    .line 79
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minTtl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxTtl: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0 <= minTtl <= maxTtl)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static appendDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 218
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static emptyAdditionals([Lio/netty/handler/codec/dns/DnsRecord;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 123
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Throwable;Lio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;
    .locals 1

    const-string v0, "hostname"

    .line 152
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cause"

    .line 153
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "loop"

    .line 154
    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;

    invoke-direct {v0, p1, p3}, Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    iget p3, p0, Lio/netty/resolver/dns/DefaultDnsCache;->negativeTtl:I

    if-eqz p3, :cond_1

    invoke-static {p2}, Lio/netty/resolver/dns/DefaultDnsCache;->emptyAdditionals([Lio/netty/handler/codec/dns/DnsRecord;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p2, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-static {p1}, Lio/netty/resolver/dns/DefaultDnsCache;->appendDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lio/netty/resolver/dns/DefaultDnsCache;->negativeTtl:I

    invoke-virtual {p2, p1, v0, p3, p4}, Lio/netty/resolver/dns/Cache;->cache(Ljava/lang/String;Ljava/lang/Object;ILio/netty/channel/EventLoop;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/InetAddress;JLio/netty/channel/EventLoop;)Lio/netty/resolver/dns/DnsCacheEntry;
    .locals 3

    const-string v0, "hostname"

    .line 139
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "address"

    .line 140
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "loop"

    .line 141
    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;

    invoke-direct {v0, p1, p3}, Lio/netty/resolver/dns/DefaultDnsCache$DefaultDnsCacheEntry;-><init>(Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 143
    iget p3, p0, Lio/netty/resolver/dns/DefaultDnsCache;->maxTtl:I

    if-eqz p3, :cond_1

    invoke-static {p2}, Lio/netty/resolver/dns/DefaultDnsCache;->emptyAdditionals([Lio/netty/handler/codec/dns/DnsRecord;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p2, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-static {p1}, Lio/netty/resolver/dns/DefaultDnsCache;->appendDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lio/netty/resolver/dns/DefaultDnsCache;->minTtl:I

    iget v1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->maxTtl:I

    int-to-long v1, v1

    invoke-static {v1, v2, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    long-to-int p5, p4

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p1, v0, p3, p6}, Lio/netty/resolver/dns/Cache;->cache(Ljava/lang/String;Ljava/lang/Object;ILio/netty/channel/EventLoop;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-virtual {v0}, Lio/netty/resolver/dns/Cache;->clear()V

    return-void
.end method

.method public clear(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hostname"

    .line 118
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-static {p1}, Lio/netty/resolver/dns/DefaultDnsCache;->appendDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/netty/resolver/dns/Cache;->clear(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lio/netty/resolver/dns/DnsCacheEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "hostname"

    .line 128
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lio/netty/resolver/dns/DefaultDnsCache;->emptyAdditionals([Lio/netty/handler/codec/dns/DnsRecord;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    iget-object p2, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-static {p1}, Lio/netty/resolver/dns/DefaultDnsCache;->appendDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/netty/resolver/dns/Cache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public maxTtl()I
    .locals 1

    .line 100
    iget v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->maxTtl:I

    return v0
.end method

.method public minTtl()I
    .locals 1

    .line 91
    iget v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->minTtl:I

    return v0
.end method

.method public negativeTtl()I
    .locals 1

    .line 108
    iget v0, p0, Lio/netty/resolver/dns/DefaultDnsCache;->negativeTtl:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDnsCache(minTtl="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->minTtl:I

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxTtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->maxTtl:I

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", negativeTtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->negativeTtl:I

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cached resolved hostname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/resolver/dns/DefaultDnsCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 172
    invoke-virtual {v1}, Lio/netty/resolver/dns/Cache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
