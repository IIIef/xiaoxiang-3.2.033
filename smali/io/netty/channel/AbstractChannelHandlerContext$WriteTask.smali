.class final Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
.super Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Lio/netty/channel/SingleThreadEventLoop$NonWakeupRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteTask"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1108
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;

    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;-><init>()V

    sput-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->RECYCLER:Lio/netty/util/Recycler;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1123
    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$1;)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method static newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    .locals 1

    .line 1117
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    .line 1118
    invoke-static {v0, p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->init(Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-object v0
.end method
