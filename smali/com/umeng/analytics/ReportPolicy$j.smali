.class public Lcom/umeng/analytics/ReportPolicy$j;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/bt;->l(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
