.class Lio/netty/resolver/dns/DnsNameResolver$2;
.super Lio/netty/channel/ChannelInitializer;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsNameResolver;-><init>(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelFactory;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;JLio/netty/resolver/ResolvedAddressTypes;ZIZIZLio/netty/resolver/HostsFileEntriesResolver;Lio/netty/resolver/dns/DnsServerAddressStreamProvider;[Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/DatagramChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/dns/DnsNameResolver;

.field final synthetic val$responseHandler:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$2;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    iput-object p2, p0, Lio/netty/resolver/dns/DnsNameResolver$2;->val$responseHandler:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    check-cast p1, Lio/netty/channel/socket/DatagramChannel;

    invoke-virtual {p0, p1}, Lio/netty/resolver/dns/DnsNameResolver$2;->initChannel(Lio/netty/channel/socket/DatagramChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/DatagramChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    invoke-interface {p1}, Lio/netty/channel/socket/DatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$100()Lio/netty/handler/codec/dns/DatagramDnsResponseDecoder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$200()Lio/netty/handler/codec/dns/DatagramDnsQueryEncoder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver$2;->val$responseHandler:Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
