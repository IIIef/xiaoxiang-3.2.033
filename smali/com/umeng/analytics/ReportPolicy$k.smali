.class public Lcom/umeng/analytics/ReportPolicy$k;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private final a:J

.field private b:Lu/aly/ab;


# direct methods
.method public constructor <init>(Lu/aly/ab;)V
    .locals 2

    .line 236
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const-wide/32 v0, 0xa4cb80

    .line 233
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$k;->a:J

    .line 237
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/ab;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/ab;

    iget-wide v2, p1, Lu/aly/ab;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
