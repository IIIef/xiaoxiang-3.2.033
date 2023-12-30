.class final Lio/netty/util/Recycler$WeakOrderQueue$Head;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler$WeakOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Head"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field link:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    const-class v0, Lio/netty/util/Recycler;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static reserveSpace(Ljava/util/concurrent/atomic/AtomicInteger;I)Z
    .locals 2

    .line 293
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int v1, v0, p1

    .line 297
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 270
    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    :goto_0
    if-eqz v1, :cond_0

    .line 272
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    .line 273
    iget-object v2, v1, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 275
    iput-object v0, v1, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 269
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 270
    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    :goto_1
    if-eqz v2, :cond_1

    .line 272
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    .line 273
    iget-object v3, v2, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 275
    iput-object v0, v2, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-object v2, v3

    goto :goto_1

    .line 278
    :cond_1
    throw v1
.end method

.method reclaimSpace(I)V
    .locals 1

    .line 283
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method reserveSpace(I)Z
    .locals 1

    .line 287
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpace(Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result p1

    return p1
.end method
