.class final Lio/netty/util/Recycler$WeakOrderQueue$Link;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler$WeakOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Link"
.end annotation


# instance fields
.field private final elements:[Lio/netty/util/Recycler$DefaultHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;"
        }
    .end annotation
.end field

.field next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

.field private readIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 245
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 246
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v0

    new-array v0, v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-void
.end method

.method static synthetic access$1200(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;
    .locals 0

    .line 245
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-object p0
.end method

.method static synthetic access$1300(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I
    .locals 0

    .line 245
    iget p0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    return p0
.end method

.method static synthetic access$1302(Lio/netty/util/Recycler$WeakOrderQueue$Link;I)I
    .locals 0

    .line 245
    iput p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    return p1
.end method
