.class public abstract Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected immersionBar:Lcom/gyf/immersionbar/ImmersionBar;

.field public isUseActTransition:Z

.field public mContext:Landroid/content/Context;

.field public mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

.field private mTAG:Ljava/lang/String;

.field public rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field protected settDialog:Landroid/app/AlertDialog;

.field protected settDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isUseActTransition:Z

    return-void
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 466
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isOperatorEmpty(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ""

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract attachLayoutRes()I
.end method

.method public canableOperate()Z
    .locals 3

    .line 431
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "sp_key_user_token"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0179

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->showDefaultMsg(Ljava/lang/String;)V

    return v1

    .line 435
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0155

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->showDefaultMsg(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->overridePendingTransitionExit()V

    return-void
.end method

.method public finishActivity()V
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finishAfterTransition()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;
    .locals 2

    .line 91
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    .line 93
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    return-object v0
.end method

.method public goToAppSetting()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 121
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0115

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d005d

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d005a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d005c

    new-instance v1, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0d006f

    new-instance p3, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$2;

    invoke-direct {p3, p0, p4}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialog:Landroid/app/AlertDialog;

    .line 154
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .line 302
    new-instance v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initBaseBar(Z)V
    .locals 2

    .line 344
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->immersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 347
    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f050099

    .line 348
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f050040

    .line 349
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    .line 350
    invoke-virtual {v0, p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_0
    return-void
.end method

.method public initCreateLoading(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance p1, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->setIconType(I)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0083

    .line 274
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->setTipWord(Ljava/lang/CharSequence;)Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/Loading/QMUITipDialog$Builder;->create()Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mLoadingDialog:Lcom/jiabaida/little_elephant/Loading/QMUITipDialog;

    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method public isChinaSimCard()Z
    .locals 2

    .line 494
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLogin()Z
    .locals 2

    .line 448
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

.method public isOldVersion()Z
    .locals 1

    .line 456
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onCreateBefor(Landroid/os/Bundle;)V

    .line 165
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {p0}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->addActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->attachLayoutRes()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->useActivityTransition()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isUseActTransition:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->setContentView(I)V

    .line 173
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->useEventBus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->useLoading()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->initCreateLoading(Z)V

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->initBaseBar(Z)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->initData()V

    :cond_1
    return-void
.end method

.method protected onCreateBefor(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 395
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->useEventBus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 400
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->cancel()V

    .line 401
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->hideLoading()V

    .line 402
    invoke-static {p0}, Lcom/jiabaida/little_elephant/app/CustomActivityManager;->deleteActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onBackPressed()V

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 2

    .line 331
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected overridePendingTransitionEnter()V
    .locals 2

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isUseActTransition:Z

    if-eqz v0, :cond_0

    const v0, 0x7f01000f

    const v1, 0x7f010010

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected overridePendingTransitionExit()V
    .locals 2

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isUseActTransition:Z

    if-eqz v0, :cond_0

    const v0, 0x7f01000e

    const v1, 0x7f010011

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public setTitle(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7

    if-eqz p5, :cond_1

    if-eqz p1, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f050086

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    :goto_0
    new-instance p1, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$3;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 254
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

    .line 195
    invoke-virtual/range {v0 .. v6}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->setTitle(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public showDefaultMsg(Ljava/lang/String;)V
    .locals 2

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->showDefaultMsg(Ljava/lang/String;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startActivity"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->overridePendingTransitionEnter()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startActivityForResult"

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 377
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-super {p0, p1, p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 378
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->overridePendingTransitionEnter()V

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
