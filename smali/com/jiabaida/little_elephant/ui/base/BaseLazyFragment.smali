.class public abstract Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseFragment;
.source "BaseLazyFragment.java"


# instance fields
.field private isFirstLoad:Z

.field private isFragmenteChangeStatus:Z

.field private isInitView:Z

.field private isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    .line 130
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    .line 131
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    return-void
.end method

.method private initVariableStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    .line 141
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    .line 142
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    return-void
.end method

.method private lazyLoadData()V
    .locals 7

    .line 74
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    const-string v1, "  isVisible  :"

    const-string v2, " isInitView  :"

    const-string v3, "\u6267\u884c\uff1a"

    const-string v4, "----"

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7b2c\u4e00\u6b21\u52a0\u8f7d isFirstLoad :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0d\u662f\u7b2c\u4e00\u6b21\u52a0\u8f7disFirstLoad :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b8c\u6210\u6570\u636e\u7b2c\u4e00\u6b21\u52a0\u8f7d"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->initViewPager(Landroid/view/View;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->lazyLoad()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFirstLoad:Z

    :cond_2
    return-void
.end method

.method private onFragmentVisibleChange(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onFragmentVisibleChange(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addFragmentVisibleChange()V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    .line 39
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    invoke-direct {p0, v1, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onFragmentVisibleChange(ZZ)V

    :cond_0
    return-void
.end method

.method public canableOperate()Z
    .locals 3

    .line 151
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v2, 0x2717

    if-ne v0, v2, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isLogin()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->showDefaultMsg(Ljava/lang/String;)V

    return v2

    .line 158
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->showDefaultMsg(Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method protected abstract initViewPager(Landroid/view/View;)V
.end method

.method public isLogin()Z
    .locals 2

    .line 166
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "sp_key_user_token"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract lazyLoad()V
.end method

.method public onDestroyView()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->onDestroyView()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->initVariableStatus()V

    return-void
.end method

.method protected abstract onFragmentVisibleChange(Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6267\u884c\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onViewCreated___setUserVisibleHint"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    .line 48
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->lazyLoadData()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isVisible:Z

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->lazyLoadData()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    .line 63
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    invoke-direct {p0, v0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onFragmentVisibleChange(ZZ)V

    return-void

    .line 66
    :cond_2
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isFragmenteChangeStatus:Z

    .line 68
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->isInitView:Z

    invoke-direct {p0, v1, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onFragmentVisibleChange(ZZ)V

    .line 70
    :cond_3
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method
