.class Lio/netty/channel/epoll/AbstractEpollStreamChannel$8;
.super Ljava/lang/Object;
.source "AbstractEpollStreamChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;->addToSpliceQueue(Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

.field final synthetic val$task:Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$8;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    iput-object p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$8;->val$task:Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 837
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$8;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$8;->val$task:Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    invoke-static {v0, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$500(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V

    return-void
.end method
