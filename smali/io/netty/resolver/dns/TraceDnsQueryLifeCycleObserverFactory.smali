.class final Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;
.super Ljava/lang/Object;
.source "TraceDnsQueryLifeCycleObserverFactory.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/util/internal/logging/InternalLogLevel;

.field private static final DEFAULT_LOGGER:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final level:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;

    .line 27
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->DEFAULT_LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    .line 28
    sget-object v0, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    sput-object v0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->DEFAULT_LEVEL:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 33
    sget-object v0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->DEFAULT_LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v1, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->DEFAULT_LEVEL:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-direct {p0, v0, v1}, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;-><init>(Lio/netty/util/internal/logging/InternalLogger;Lio/netty/util/internal/logging/InternalLogLevel;)V

    return-void
.end method

.method constructor <init>(Lio/netty/util/internal/logging/InternalLogger;Lio/netty/util/internal/logging/InternalLogLevel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "logger"

    .line 37
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogger;

    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p1, "level"

    .line 38
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/logging/InternalLogLevel;

    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method


# virtual methods
.method public newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 3

    .line 43
    new-instance v0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;

    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifeCycleObserverFactory;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-direct {v0, p1, v1, v2}, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;-><init>(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/util/internal/logging/InternalLogger;Lio/netty/util/internal/logging/InternalLogLevel;)V

    return-object v0
.end method
