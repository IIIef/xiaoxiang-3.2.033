.class public Lio/netty/util/ByteProcessor$IndexNotOfProcessor;
.super Ljava/lang/Object;
.source "ByteProcessor.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ByteProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexNotOfProcessor"
.end annotation


# instance fields
.field private final byteToNotFind:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-byte p1, p0, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;->byteToNotFind:B

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 1

    .line 54
    iget-byte v0, p0, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;->byteToNotFind:B

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
