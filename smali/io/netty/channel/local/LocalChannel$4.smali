.class Lio/netty/channel/local/LocalChannel$4;
.super Ljava/lang/Object;
.source "LocalChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/local/LocalChannel;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/local/LocalChannel;

.field final synthetic val$peer:Lio/netty/channel/local/LocalChannel;

.field final synthetic val$peerIsActive:Z


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;Z)V
    .locals 0

    .line 250
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$4;->this$0:Lio/netty/channel/local/LocalChannel;

    iput-object p2, p0, Lio/netty/channel/local/LocalChannel$4;->val$peer:Lio/netty/channel/local/LocalChannel;

    iput-boolean p3, p0, Lio/netty/channel/local/LocalChannel$4;->val$peerIsActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$4;->val$peer:Lio/netty/channel/local/LocalChannel;

    iget-boolean v1, p0, Lio/netty/channel/local/LocalChannel$4;->val$peerIsActive:Z

    invoke-static {v0, v1}, Lio/netty/channel/local/LocalChannel;->access$300(Lio/netty/channel/local/LocalChannel;Z)V

    return-void
.end method
