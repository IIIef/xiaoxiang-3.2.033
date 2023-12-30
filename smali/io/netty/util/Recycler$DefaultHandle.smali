.class final Lio/netty/util/Recycler$DefaultHandle;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/Recycler$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/Recycler$Handle<",
        "TT;>;"
    }
.end annotation


# instance fields
.field hasBeenRecycled:Z

.field private lastRecycledId:I

.field private recycleId:I

.field private stack:Lio/netty/util/Recycler$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Stack<",
            "*>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-void
.end method

.method static synthetic access$1100(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 0

    .line 201
    iget p0, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return p0
.end method

.method static synthetic access$1102(Lio/netty/util/Recycler$DefaultHandle;I)I
    .locals 0

    .line 201
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return p1
.end method

.method static synthetic access$1400(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 0

    .line 201
    iget p0, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return p0
.end method

.method static synthetic access$1402(Lio/netty/util/Recycler$DefaultHandle;I)I
    .locals 0

    .line 201
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return p1
.end method

.method static synthetic access$500(Lio/netty/util/Recycler$DefaultHandle;)Ljava/lang/Object;
    .locals 0

    .line 201
    iget-object p0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 201
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/netty/util/Recycler$DefaultHandle;)Lio/netty/util/Recycler$Stack;
    .locals 0

    .line 201
    iget-object p0, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-object p0
.end method

.method static synthetic access$602(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$Stack;
    .locals 0

    .line 201
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-object p1
.end method


# virtual methods
.method public recycle(Ljava/lang/Object;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 220
    iget-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 221
    iget v0, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iget v1, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, p0}, Lio/netty/util/Recycler$Stack;->push(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object does not belong to handle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
