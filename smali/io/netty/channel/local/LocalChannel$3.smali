.class Lio/netty/channel/local/LocalChannel$3;
.super Ljava/lang/Object;
.source "LocalChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/local/LocalChannel;->doRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/local/LocalChannel;

.field final synthetic val$peer:Lio/netty/channel/local/LocalChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$3;->this$0:Lio/netty/channel/local/LocalChannel;

    iput-object p2, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 185
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-static {v0}, Lio/netty/channel/local/LocalChannel;->access$200(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v0}, Lio/netty/channel/local/LocalChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    :cond_0
    return-void
.end method
