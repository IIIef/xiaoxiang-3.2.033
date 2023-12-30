.class Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;
.super Landroid/os/Handler;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->timeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$800(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->timeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
