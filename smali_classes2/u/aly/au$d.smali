.class Lu/aly/au$d;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lu/aly/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/au$1;)V
    .locals 0

    .line 1396
    invoke-direct {p0}, Lu/aly/au$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/au$c;
    .locals 2

    .line 1398
    new-instance v0, Lu/aly/au$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/au$c;-><init>(Lu/aly/au$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dg;
    .locals 1

    .line 1396
    invoke-virtual {p0}, Lu/aly/au$d;->a()Lu/aly/au$c;

    move-result-object v0

    return-object v0
.end method
