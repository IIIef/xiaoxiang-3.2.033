.class public Lcom/umeng/analytics/ReportPolicy$b;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lu/aly/am;

.field private b:Lu/aly/ab;


# direct methods
.method public constructor <init>(Lu/aly/ab;Lu/aly/am;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/ab;

    .line 176
    iput-object p2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/am;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/am;

    invoke-virtual {v0}, Lu/aly/am;->c()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/am;

    invoke-virtual {p1}, Lu/aly/am;->a()J

    move-result-wide v2

    .line 183
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/ab;

    iget-wide v4, p1, Lu/aly/ab;->c:J

    sub-long/2addr v0, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
