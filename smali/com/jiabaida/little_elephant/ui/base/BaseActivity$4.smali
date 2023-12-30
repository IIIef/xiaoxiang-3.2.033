.class Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->useLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->initCreateLoading(Z)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;->show()V

    :cond_1
    return-void
.end method
