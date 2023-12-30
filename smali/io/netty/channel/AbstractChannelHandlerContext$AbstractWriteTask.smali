.class abstract Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWriteTask"
.end annotation


# static fields
.field private static final ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

.field private static final WRITE_TASK_OVERHEAD:I


# instance fields
.field private ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final handle:Lio/netty/util/Recycler$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.netty.transport.estimateSizeOnSubmit"

    const/4 v1, 0x1

    .line 1038
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    const-string v0, "io.netty.transport.writeTaskSizeOverhead"

    const/16 v1, 0x30

    .line 1042
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->WRITE_TASK_OVERHEAD:I

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "+",
            "Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;",
            ">;)V"
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->handle:Lio/netty/util/Recycler$Handle;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$1;)V
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method private decrementPendingOutboundBytes()V
    .locals 3

    .line 1088
    sget-boolean v0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1600(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->decrementPendingOutboundBytes(J)V

    :cond_0
    return-void
.end method

.method protected static init(Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1058
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 1059
    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 1061
    sget-boolean p3, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    if-eqz p3, :cond_0

    .line 1062
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1600(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object p3

    invoke-virtual {p3}, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result p2

    sget p3, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->WRITE_TASK_OVERHEAD:I

    add-int/2addr p2, p3

    iput p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    .line 1063
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1600(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object p1

    iget p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    int-to-long p2, p0

    invoke-virtual {p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->incrementPendingOutboundBytes(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1065
    iput p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    :goto_0
    return-void
.end method

.method private recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 1095
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1096
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 1097
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 1098
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->handle:Lio/netty/util/Recycler$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/Recycler$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 1081
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->decrementPendingOutboundBytes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->recycle()V

    .line 1084
    throw v0
.end method

.method public final run()V
    .locals 3

    .line 1072
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->decrementPendingOutboundBytes()V

    .line 1073
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->recycle()V

    .line 1076
    throw v0
.end method

.method protected write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1102
    invoke-static {p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1700(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
