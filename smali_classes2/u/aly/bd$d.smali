.class Lu/aly/bd$d;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bd$1;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lu/aly/bd$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bd$c;
    .locals 2

    .line 414
    new-instance v0, Lu/aly/bd$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bd$c;-><init>(Lu/aly/bd$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 412
    invoke-virtual {p0}, Lu/aly/bd$d;->a()Lu/aly/bd$c;

    move-result-object v0

    return-object v0
.end method
