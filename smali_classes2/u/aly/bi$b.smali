.class Lu/aly/bi$b;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bi$1;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lu/aly/bi$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bi$a;
    .locals 2

    .line 279
    new-instance v0, Lu/aly/bi$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bi$a;-><init>(Lu/aly/bi$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lu/aly/bi$b;->a()Lu/aly/bi$a;

    move-result-object v0

    return-object v0
.end method
