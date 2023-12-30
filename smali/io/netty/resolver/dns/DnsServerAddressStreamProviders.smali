.class public final Lio/netty/resolver/dns/DnsServerAddressStreamProviders;
.super Ljava/lang/Object;
.source "DnsServerAddressStreamProviders.java"


# static fields
.field private static final DEFAULT_DNS_SERVER_ADDRESS_STREAM_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

.field private static final REFRESH_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->REFRESH_INTERVAL:J

    .line 34
    new-instance v0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;

    invoke-direct {v0}, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;-><init>()V

    sput-object v0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->DEFAULT_DNS_SERVER_ADDRESS_STREAM_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 28
    sget-wide v0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->REFRESH_INTERVAL:J

    return-wide v0
.end method

.method public static platformDefault()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;
    .locals 1

    .line 72
    sget-object v0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->DEFAULT_DNS_SERVER_ADDRESS_STREAM_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    return-object v0
.end method
