.class public Lu/aly/cs$a;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lu/aly/da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lu/aly/cs$a;->a:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    .line 75
    iput-wide v0, p0, Lu/aly/cs$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dm;)Lu/aly/cy;
    .locals 3

    .line 79
    new-instance v0, Lu/aly/cs;

    iget-wide v1, p0, Lu/aly/cs$a;->a:J

    invoke-direct {v0, p1, v1, v2}, Lu/aly/cs;-><init>(Lu/aly/dm;J)V

    return-object v0
.end method
