.class Lu/aly/az$b;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/az$1;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Lu/aly/az$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/az$a;
    .locals 2

    .line 386
    new-instance v0, Lu/aly/az$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/az$a;-><init>(Lu/aly/az$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 384
    invoke-virtual {p0}, Lu/aly/az$b;->a()Lu/aly/az$a;

    move-result-object v0

    return-object v0
.end method
