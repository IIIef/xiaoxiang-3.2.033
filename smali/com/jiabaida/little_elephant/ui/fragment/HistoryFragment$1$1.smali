.class Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    .line 135
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 136
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$400(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$500(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 137
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->access$700(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;->this$1:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->deleteAll()V

    return-void
.end method
