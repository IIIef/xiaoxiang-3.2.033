.class final Lio/netty/util/AsciiString$1;
.super Ljava/lang/Object;
.source "AsciiString.java"

# interfaces
.implements Lio/netty/util/HashingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/AsciiString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/HashingStrategy<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1369
    invoke-static {p1, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1361
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/AsciiString$1;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public hashCode(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1364
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 0

    .line 1361
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/util/AsciiString$1;->hashCode(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
