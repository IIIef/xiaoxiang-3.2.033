.class Lio/netty/channel/group/DefaultChannelGroupFuture$1;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/netty/channel/group/DefaultChannelGroupFuture;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result p1

    .line 52
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$008(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$108(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    .line 59
    :goto_0
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$000(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result p1

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 64
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result p1

    if-lez p1, :cond_4

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    .line 66
    invoke-static {v0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelFuture;

    .line 68
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    new-instance v1, Lio/netty/channel/group/ChannelGroupException;

    invoke-direct {v1, p1}, Lio/netty/channel/group/ChannelGroupException;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$300(Lio/netty/channel/group/DefaultChannelGroupFuture;Lio/netty/channel/group/ChannelGroupException;)V

    goto :goto_3

    .line 74
    :cond_4
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$400(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
