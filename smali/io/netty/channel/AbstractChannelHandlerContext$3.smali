.class final Lio/netty/channel/AbstractChannelHandlerContext$3;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$next:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$3;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 216
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$3;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$200(Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method
