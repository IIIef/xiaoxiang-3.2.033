.class final Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;
.super Ljava/util/ArrayDeque;
.source "FlowControlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/flow/FlowControlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecyclableArrayDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_ELEMENTS:I = 0x2

.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final handle:Lio/netty/util/Recycler$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque$1;

    invoke-direct {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque$1;-><init>()V

    sput-object v0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->RECYCLER:Lio/netty/util/Recycler;

    return-void
.end method

.method private constructor <init>(ILio/netty/util/Recycler$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 230
    iput-object p2, p0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->handle:Lio/netty/util/Recycler$Handle;

    return-void
.end method

.method synthetic constructor <init>(ILio/netty/util/Recycler$Handle;Lio/netty/handler/flow/FlowControlHandler$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;-><init>(ILio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method public static newInstance()Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;
    .locals 1

    .line 223
    sget-object v0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->clear()V

    .line 235
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->handle:Lio/netty/util/Recycler$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/Recycler$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method
