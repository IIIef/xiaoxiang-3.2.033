.class public Lcom/umeng/analytics/ReportPolicy$g;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:J

.field private b:Lu/aly/ab;


# direct methods
.method public constructor <init>(Lu/aly/ab;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 142
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$g;->a:J

    .line 146
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$g;->b:Lu/aly/ab;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$g;->b:Lu/aly/ab;

    iget-wide v2, p1, Lu/aly/ab;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/analytics/ReportPolicy$g;->a:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
