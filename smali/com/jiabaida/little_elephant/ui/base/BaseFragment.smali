.class public abstract Lcom/jiabaida/little_elephant/ui/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public isUseActTransition:Z

.field protected mContext:Landroid/content/Context;

.field protected mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

.field protected mRootView:Landroid/view/View;

.field protected final mTAG:Ljava/lang/String;

.field private rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field private setDialog:Landroid/app/AlertDialog;

.field private setDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->isUseActTransition:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method protected abstract addFragmentVisibleChange()V
.end method

.method protected abstract attachLayoutRes()I
.end method

.method public finishActivity()V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 328
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finishAfterTransition()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 332
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->overridePendingTransitionExit()V

    return-void
.end method

.method protected getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;
    .locals 2

    .line 86
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    .line 88
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    return-object v0
.end method

.method public goToAppSetting()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 110
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0115

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d005d

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d005a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d005c

    new-instance v1, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0d006f

    new-instance p3, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;

    invoke-direct {p3, p0, p4}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialog:Landroid/app/AlertDialog;

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$5;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initCreateLoading(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance p1, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->setIconType(I)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0083

    .line 371
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->setTipWord(Ljava/lang/CharSequence;)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->create()Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method public isOldVersion()Z
    .locals 1

    .line 336
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6267\u884c\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->initData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 160
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->onCreateBefor(Landroid/os/Bundle;)V

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6267\u884c\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->useLoading()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->initCreateLoading(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->useActivityTransition()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->isUseActTransition:Z

    return-void
.end method

.method protected onCreateBefor(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u6267\u884c\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onCreateView"

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mRootView:Landroid/view/View;

    if-nez p2, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->attachLayoutRes()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->useEventBus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->addFragmentVisibleChange()V

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->cancel()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->useEventBus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidden : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 204
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6267\u884c\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onViewCreated"

    invoke-static {p2, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected overridePendingTransitionEnter()V
    .locals 3

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->isUseActTransition:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000f

    const v2, 0x7f010010

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected overridePendingTransitionExit()V
    .locals 3

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->isUseActTransition:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f010011

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public returnRequestNetStatus(ILjava/lang/String;)V
    .locals 0

    .line 425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7

    if-eqz p5, :cond_1

    if-eqz p1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f050086

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    :goto_0
    new-instance p1, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 288
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "null:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "----title:"

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 229
    invoke-virtual/range {v0 .. v6}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setTitle(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public showDefaultMsg(Ljava/lang/String;)V
    .locals 2

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 421
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 376
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$4;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frag--startActivity"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->overridePendingTransitionEnter()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frag--startActivityForResult"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 321
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-super {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 322
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->overridePendingTransitionEnter()V

    return-void
.end method

.method protected useActivityTransition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected useLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useNightMode(Z)V
    .locals 2

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 346
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 349
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 352
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    :cond_1
    return-void
.end method
