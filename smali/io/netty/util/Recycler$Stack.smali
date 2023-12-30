.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field private elements:[Lio/netty/util/Recycler$DefaultHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;"
        }
    .end annotation
.end field

.field private handleRecycleCount:I

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final maxCapacity:I

.field final maxDelayedQueues:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final ratioMask:I

.field private size:I

.field final threadRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler<",
            "TT;>;",
            "Ljava/lang/Thread;",
            "IIII)V"
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 469
    iput v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 475
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 476
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    .line 477
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 478
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    div-int p2, p3, p4

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 479
    invoke-static {}, Lio/netty/util/Recycler;->access$1500()I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 480
    iput p5, p0, Lio/netty/util/Recycler$Stack;->ratioMask:I

    .line 481
    iput p6, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    return-void
.end method

.method static synthetic access$700(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;
    .locals 0

    .line 447
    iget-object p0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-object p0
.end method

.method static synthetic access$800(Lio/netty/util/Recycler$Stack;)I
    .locals 0

    .line 447
    iget p0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return p0
.end method

.method static synthetic access$802(Lio/netty/util/Recycler$Stack;I)I
    .locals 0

    .line 447
    iput p1, p0, Lio/netty/util/Recycler$Stack;->size:I

    return p1
.end method

.method private pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 624
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 625
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$WeakOrderQueue;

    if-nez v1, :cond_2

    .line 627
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    if-lt v1, v2, :cond_0

    .line 629
    sget-object p1, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 633
    :cond_0
    invoke-static {p0, p2}, Lio/netty/util/Recycler$WeakOrderQueue;->allocate(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 637
    :cond_1
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    :cond_2
    sget-object p2, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    if-ne v1, p2, :cond_3

    return-void

    .line 643
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void
.end method

.method private pushNow(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 602
    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$1400(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v0

    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$1100(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 605
    invoke-static {}, Lio/netty/util/Recycler;->access$1900()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$1102(Lio/netty/util/Recycler$DefaultHandle;I)I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$1402(Lio/netty/util/Recycler$DefaultHandle;I)I

    .line 607
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 608
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    .line 613
    iget v3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 616
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 617
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    :cond_2
    :goto_0
    return-void

    .line 603
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)Z"
        }
    .end annotation

    .line 647
    iget-boolean v0, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    if-nez v0, :cond_1

    .line 648
    iget v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    iget v2, p0, Lio/netty/util/Recycler$Stack;->ratioMask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v1

    .line 652
    :cond_0
    iput-boolean v1, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method increaseCapacity(I)I
    .locals 2

    .line 491
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v0, v0

    .line 492
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_1

    if-lt v0, v1, :cond_0

    .line 497
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 498
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v1, v0

    if-eq p1, v1, :cond_2

    .line 499
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    :cond_2
    return p1
.end method

.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 658
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 507
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 512
    :cond_0
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 515
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aget-object v3, v2, v0

    .line 516
    aput-object v1, v2, v0

    .line 517
    invoke-static {v3}, Lio/netty/util/Recycler$DefaultHandle;->access$1100(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v1

    invoke-static {v3}, Lio/netty/util/Recycler$DefaultHandle;->access$1400(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 520
    invoke-static {v3, v1}, Lio/netty/util/Recycler$DefaultHandle;->access$1402(Lio/netty/util/Recycler$DefaultHandle;I)I

    .line 521
    invoke-static {v3, v1}, Lio/netty/util/Recycler$DefaultHandle;->access$1102(Lio/netty/util/Recycler$DefaultHandle;I)I

    .line 522
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return-object v3

    .line 518
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recycled multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 589
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lio/netty/util/Recycler$Stack;->pushNow(Lio/netty/util/Recycler$DefaultHandle;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/Recycler$Stack;->pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V

    :goto_0
    return-void
.end method

.method scavenge()Z
    .locals 1

    .line 528
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 534
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    const/4 v0, 0x0

    return v0
.end method

.method scavengeSome()Z
    .locals 7

    .line 540
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 543
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    if-nez v2, :cond_1

    return v1

    .line 548
    :cond_0
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 553
    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    goto :goto_4

    .line 557
    :cond_2
    invoke-static {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1700(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v3

    .line 558
    invoke-static {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1800(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 562
    invoke-virtual {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 564
    :goto_1
    invoke-virtual {v2, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    .line 573
    invoke-static {v0, v3}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1600(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v3

    goto :goto_0

    :cond_7
    :goto_3
    move v4, v1

    move-object v2, v3

    .line 583
    :goto_4
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 584
    iput-object v2, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    return v4
.end method

.method declared-synchronized setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-static {p1, v0}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1600(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 487
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
