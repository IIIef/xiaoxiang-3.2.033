.class Lu/aly/bk$b;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bk$1;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lu/aly/bk$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bk$a;
    .locals 2

    .line 273
    new-instance v0, Lu/aly/bk$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bk$a;-><init>(Lu/aly/bk$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lu/aly/bk$b;->a()Lu/aly/bk$a;

    move-result-object v0

    return-object v0
.end method
