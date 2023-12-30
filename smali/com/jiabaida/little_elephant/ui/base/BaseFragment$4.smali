.class Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frag\u52a0\u8f7d...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---showLoading"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->useLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->initCreateLoading(Z)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->show()V

    :cond_1
    return-void
.end method
