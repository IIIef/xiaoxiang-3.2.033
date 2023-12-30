.class public Lcom/gyf/immersionbar/components/ImmersionProxy;
.super Ljava/lang/Object;
.source "ImmersionProxy.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

.field private mIsActivityCreated:Z

.field private mIsLazyAfterView:Z

.field private mIsLazyBeforeView:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    .line 38
    instance-of v0, p1, Lcom/gyf/immersionbar/components/ImmersionOwner;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lcom/gyf/immersionbar/components/ImmersionOwner;

    iput-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment\u8bf7\u5b9e\u73b0ImmersionOwner\u63a5\u53e3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isUserVisibleHint()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsActivityCreated:Z

    .line 83
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {v0}, Lcom/gyf/immersionbar/components/ImmersionOwner;->immersionBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {v0}, Lcom/gyf/immersionbar/components/ImmersionOwner;->initImmersionBar()V

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyAfterView:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {v0}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onLazyAfterView()V

    .line 89
    iput-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyAfterView:Z

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->immersionBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->initImmersionBar()V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onVisible()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyBeforeView:Z

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onLazyBeforeView()V

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyBeforeView:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    .line 108
    iput-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 122
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {v0}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onInvisible()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {v0}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onVisible()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    iget-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyBeforeView:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onLazyBeforeView()V

    .line 50
    iput-boolean v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyBeforeView:Z

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsActivityCreated:Z

    if-eqz p1, :cond_4

    .line 53
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 54
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->immersionBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->initImmersionBar()V

    .line 57
    :cond_1
    iget-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyAfterView:Z

    if-nez p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onLazyAfterView()V

    .line 59
    iput-boolean v0, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsLazyAfterView:Z

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onVisible()V

    goto :goto_0

    .line 65
    :cond_3
    iget-boolean p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mIsActivityCreated:Z

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/gyf/immersionbar/components/ImmersionProxy;->mImmersionOwner:Lcom/gyf/immersionbar/components/ImmersionOwner;

    invoke-interface {p1}, Lcom/gyf/immersionbar/components/ImmersionOwner;->onInvisible()V

    :cond_4
    :goto_0
    return-void
.end method
