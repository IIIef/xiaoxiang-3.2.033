.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad1;
.source "BaseLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;

    const-class v1, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    const-string v2, "consumerNode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;->C_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;->consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method protected final lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;->consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method protected final spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 96
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;->C_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
