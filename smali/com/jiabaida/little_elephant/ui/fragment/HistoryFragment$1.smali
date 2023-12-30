.class Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initData()V
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

    .line 117
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->isLogin()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    .line 125
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;)V

    .line 124
    invoke-static {p1, v0, v1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method
