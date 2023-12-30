.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-jiabaida-little_elephant-ui-fragment-NowFragment$4()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 519
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 520
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isCheckSecond:Z

    .line 521
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 508
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, p1, v0

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->mHints:[J

    aget-wide v3, p1, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    .line 513
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->getRandom()V

    .line 514
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iput-boolean v2, p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isCheckSecond:Z

    .line 515
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onPause()V

    .line 517
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$4;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 523
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
