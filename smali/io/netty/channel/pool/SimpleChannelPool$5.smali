.class Lio/netty/channel/pool/SimpleChannelPool$5;
.super Ljava/lang/Object;
.source "SimpleChannelPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/pool/SimpleChannelPool;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->this$0:Lio/netty/channel/pool/SimpleChannelPool;

    iput-object p2, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->val$channel:Lio/netty/channel/Channel;

    iput-object p3, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->this$0:Lio/netty/channel/pool/SimpleChannelPool;

    iget-object v1, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->val$channel:Lio/netty/channel/Channel;

    iget-object v2, p0, Lio/netty/channel/pool/SimpleChannelPool$5;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-static {v0, v1, v2}, Lio/netty/channel/pool/SimpleChannelPool;->access$300(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method
