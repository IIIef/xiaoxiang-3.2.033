.class final Lio/netty/util/Recycler$WeakOrderQueue;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakOrderQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$WeakOrderQueue$Head;,
        Lio/netty/util/Recycler$WeakOrderQueue$Link;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;


# instance fields
.field private final head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

.field private final id:I

.field private next:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    const-class v0, Lio/netty/util/Recycler;

    .line 241
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>()V

    sput-object v0, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-static {}, Lio/netty/util/Recycler;->access$1000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    .line 314
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-direct {v1, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-static {}, Lio/netty/util/Recycler;->access$1000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 318
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 323
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object p1, p1, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 324
    iget-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object p1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 325
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1600(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    return-void
.end method

.method static synthetic access$1700(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 0

    .line 239
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object p0
.end method

.method static synthetic access$1800(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 239
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static allocate(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")",
            "Lio/netty/util/Recycler$WeakOrderQueue;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpace(Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")",
            "Lio/netty/util/Recycler$WeakOrderQueue;"
        }
    .end annotation

    .line 329
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V

    .line 332
    invoke-virtual {p0, v0}, Lio/netty/util/Recycler$Stack;->setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V

    return-object v0
.end method

.method private setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method


# virtual methods
.method add(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 352
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$1102(Lio/netty/util/Recycler$DefaultHandle;I)I

    .line 354
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 356
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 357
    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 364
    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v0

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    .line 366
    :cond_1
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1200(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v2

    aput-object p1, v2, v1

    const/4 v2, 0x0

    .line 367
    invoke-static {p1, v2}, Lio/netty/util/Recycler$DefaultHandle;->access$602(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$Stack;

    add-int/lit8 v1, v1, 0x1

    .line 370
    invoke-virtual {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->lazySet(I)V

    return-void
.end method

.method hasFinalData()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1300(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v0

    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method transfer(Lio/netty/util/Recycler$Stack;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)Z"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 385
    :cond_0
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1300(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v2

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 386
    iget-object v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    if-nez v2, :cond_1

    return v1

    .line 389
    :cond_1
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v0, v2, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 392
    :cond_2
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1300(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v2

    .line 393
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v3

    sub-int v4, v3, v2

    if-nez v4, :cond_3

    return v1

    .line 399
    :cond_3
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$800(Lio/netty/util/Recycler$Stack;)I

    move-result v5

    add-int/2addr v4, v5

    .line 402
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$700(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v6

    array-length v6, v6

    if-le v4, v6, :cond_4

    .line 403
    invoke-virtual {p1, v4}, Lio/netty/util/Recycler$Stack;->increaseCapacity(I)I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v5

    .line 404
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_4
    if-eq v2, v3, :cond_b

    .line 408
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1200(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v4

    .line 409
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$700(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v6

    :goto_0
    if-ge v2, v3, :cond_8

    .line 412
    aget-object v7, v4, v2

    .line 413
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$1400(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    if-nez v8, :cond_5

    .line 414
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$1100(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    invoke-static {v7, v8}, Lio/netty/util/Recycler$DefaultHandle;->access$1402(Lio/netty/util/Recycler$DefaultHandle;I)I

    goto :goto_1

    .line 415
    :cond_5
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$1400(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$1100(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v9

    if-ne v8, v9, :cond_7

    :goto_1
    const/4 v8, 0x0

    .line 418
    aput-object v8, v4, v2

    .line 420
    invoke-virtual {p1, v7}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 424
    :cond_6
    invoke-static {v7, p1}, Lio/netty/util/Recycler$DefaultHandle;->access$602(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$Stack;

    add-int/lit8 v8, v5, 0x1

    .line 425
    aput-object v7, v6, v5

    move v5, v8

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_8
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v2

    if-ne v3, v2, :cond_9

    iget-object v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    if-eqz v2, :cond_9

    .line 430
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v4

    invoke-virtual {v2, v4}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    .line 431
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v4, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v4, v2, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 434
    :cond_9
    invoke-static {v0, v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1302(Lio/netty/util/Recycler$WeakOrderQueue$Link;I)I

    .line 435
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$800(Lio/netty/util/Recycler$Stack;)I

    move-result v0

    if-ne v0, v5, :cond_a

    return v1

    .line 438
    :cond_a
    invoke-static {p1, v5}, Lio/netty/util/Recycler$Stack;->access$802(Lio/netty/util/Recycler$Stack;I)I

    const/4 p1, 0x1

    return p1

    :cond_b
    return v1
.end method
