.class Lu/aly/bg$b;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bg$1;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lu/aly/bg$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bg$a;
    .locals 2

    .line 318
    new-instance v0, Lu/aly/bg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bg$a;-><init>(Lu/aly/bg$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lu/aly/bg$b;->a()Lu/aly/bg$a;

    move-result-object v0

    return-object v0
.end method
